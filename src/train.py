#!/usr/bin/env python

import logging
import os
from shutil import copyfile
from typing import List, Optional, Tuple

from torch.utils.data import DataLoader

from strips_hgn.models.strips_hgn import STRIPSHGN
from strips_hgn.utils.args import (
    TrainingArgs,
    parse_and_validate_training_args,
)
from strips_hgn.utils.helpers import Namespace
from strips_hgn.utils.metrics import CountMetric, metrics_logger
from strips_hgn.utils.timer import TimedOperation, timed
from strips_hgn.utils.wrapper import wrap_method
from strips_hgn.workflows import (
    KFoldTrainingDataWorkflow,
    TrainSTRIPSHGNWorkflow,
)

_log = logging.getLogger(__name__)

_RESULTS_DIRECTORY = os.path.join(
    os.path.dirname(os.path.dirname(os.path.realpath(__file__))), "results"
)

_BEST_MODEL_FNAME = "model-best.ckpt"


def _copy_best_model(train_workflow: TrainSTRIPSHGNWorkflow):
    """
    Copies best model for a fold to a static name
    """
    if not train_workflow.best_val_loss_checkpoint:
        return

    dest_filename = os.path.join(
        train_workflow.checkpoint_dir, _BEST_MODEL_FNAME
    )
    copyfile(train_workflow.best_val_loss_checkpoint, dest_filename)
    return dest_filename


@timed("TrainingDriverMethodTime")
def train_main(args: TrainingArgs, experiments_dir: str, mode=None, **kwargs):
    """
    Main runner method.

    Note, whichever one of `max_training_time` and `max_epochs` is reached
    first will be used to terminate training.

    Parameters
    ----------
    args: TrainingArgs
    experiments_dir: directory where experiment results will be stored
    """
    problems = args.get_strips_problems()

    # Generate and process training data
    kfold_training_data_wf = KFoldTrainingDataWorkflow(
        problems=problems,
        batch_size=args.batch_size,
        num_folds=args.num_folds,
        num_bins=args.num_bins,
        remove_duplicates=args.remove_duplicates,
        shuffle=args.shuffle,
        global_feature_mapper_cls=args.global_feature_mapper_cls,
        node_feature_mapper_cls=args.node_feature_mapper_cls,
        hyperedge_feature_mapper_cls=args.hyperedge_feature_mapper_cls,
        experiment_dir=experiments_dir,
        mode=mode,
        **kwargs,
    )
    kfold_dataloaders: List[
        Tuple[DataLoader, DataLoader]
    ] = kfold_training_data_wf.run()

    if mode and mode.get('auto_bslr', False):
        bs = kfold_dataloaders[0][0].batch_size
        new_learning_rate = 0.001*(bs//4)
        if new_learning_rate==0:
            new_learning_rate = 0.001
        _log.info(
                "Batch size is {}, learning rate are set from {} to {}".format(bs, args.learning_rate, new_learning_rate)
            )
        # args.learning_rate = new_learning_rate

    # Hyperparameter for STRIPS-HGN
    strips_hgn_hparams = Namespace(
        receiver_k=kfold_training_data_wf.max_receivers,
        sender_k=kfold_training_data_wf.max_senders,
        hidden_size=args.hidden_size,
        learning_rate=new_learning_rate if mode and mode.get('auto_bslr', False) else args.learning_rate,
        weight_decay=args.weight_decay,
        global_feature_mapper_cls=args.global_feature_mapper_cls,
        node_feature_mapper_cls=args.node_feature_mapper_cls,
        hyperedge_feature_mapper_cls=args.hyperedge_feature_mapper_cls,
    )

    # Run training for each fold, keep track of best results
    best_train_wf: Optional[TrainSTRIPSHGNWorkflow] = None

    for fold_idx, (train_dataloader, val_dataloader) in enumerate(
        kfold_dataloaders
    ):
        _log.info(
            f"Running training workflow for fold {fold_idx + 1} out "
            f"of {args.num_folds}"
        )
        # Time the workflow for good measure
        fold_timer = TimedOperation(
            "RunFoldTrainingTime", context={"fold_idx": fold_idx}
        ).start()

        strips_model_path = kwargs.get('strips_model_path', None)
        _log.info('Initializing STRIPSHGN.')
        strips_model = STRIPSHGN(hparams=strips_hgn_hparams)
        if strips_model_path:
            _log.info('Replacing STRIPSHGN with pretrained model.')
            pretrained_model = STRIPSHGN.load_from_checkpoint(strips_model_path, hparams=strips_hgn_hparams)
            # _log.info(f"STRIPS-HGN best val loss: {pretrained_model.best_val_loss}")
            # _log.info(f"STRIPS-HGN hparams: {pretrained_model.hparams}")
            strips_model.hgn = pretrained_model.hgn
            # strips_model = pretrained_model
            # strips_model.train()
        

        # Create training workflow and run
        current_train_wf = TrainSTRIPSHGNWorkflow(
            strips_hgn=strips_model, # STRIPSHGN(hparams=strips_hgn_hparams) if not strips_model_path else strips_model,
            max_training_time=args.max_training_time,
            max_num_epochs=args.max_epochs,
            train_dataloader=train_dataloader,
            val_dataloader=val_dataloader,
            experiments_dir=experiments_dir,
            prefix=f"fold_{fold_idx}",
            early_stopping_patience=args.patience,
        )
        current_train_wf.run()

        # Stop the timer so it saves as a metric
        fold_timer.stop()

        # Run post-training procedure
        _copy_best_model(current_train_wf)

        # Add metric for number of epochs trained for
        metrics_logger.add_metric(
            CountMetric(
                "NumberOfEpochsTrained",
                current_train_wf.current_epoch + 1,
                context={"fold_idx": fold_idx},
            )
        )

        # Check if this is the best fold we have encountered
        if (
            best_train_wf is None
            or current_train_wf.best_val_loss < best_train_wf.best_val_loss
        ):
            _log.info(
                f"New best val loss found at fold {fold_idx + 1} = "
                f"{current_train_wf.best_val_loss}"
            )
            if best_train_wf:
                _log.info(
                    f"Previous best val loss = {best_train_wf.best_val_loss}"
                )
            best_train_wf = current_train_wf

            # Make a copy of the best fold model to the main experiments results dir
            # every time a better model is trained
            best_model_fname = os.path.join(experiments_dir, _BEST_MODEL_FNAME)
            copyfile(
                os.path.join(best_train_wf.checkpoint_dir, _BEST_MODEL_FNAME),
                best_model_fname,
            )
            _log.info(f"Copied best STRIPS-HGN to {best_model_fname}")

            # Warning: only train the first fold
            break

    _log.info(
        f"Best STRIPS-HGN found at {best_train_wf.prefix} with val loss of "
        f"{best_train_wf.best_val_loss}. Checkpoint directory = "
        f"{best_train_wf.checkpoint_dir}"
    )

    # # Make a copy of the best fold model to the main experiments results dir
    # best_model_fname = os.path.join(experiments_dir, _BEST_MODEL_FNAME)
    # copyfile(
    #     os.path.join(best_train_wf.checkpoint_dir, _BEST_MODEL_FNAME),
    #     best_model_fname,
    # )
    # _log.info(f"Copied best STRIPS-HGN to {best_model_fname}")

    # add return
    return best_model_fname


def train_wrapper(args: TrainingArgs, experiment_type="train", mode=None, use_logging=True, **kwargs):
    # Wrap the training method
    return wrap_method(
        args=args,
        wrapped_method=train_main,
        experiment_type=experiment_type,
        results_directory=_RESULTS_DIRECTORY,
        mode=mode,
        use_logging=use_logging,
        **kwargs,
    )


if __name__ == "__main__":
    train_wrapper(args=parse_and_validate_training_args())
