import os
import random 
import json
import logging
from datetime import datetime

from eval import eval_wrapper
from train import train_wrapper
from strips_hgn.utils.helpers import mode_to_str
from strips_hgn.utils.logging_setup import setup_full_logging
from default_args import get_training_args, DomainAndProblemConfiguration, get_eval_args

_log = logging.getLogger(__name__)

if __name__ == "__main__":
    # base_directory = "../results/zenotravel"
    # domain_pddl="domain.pddl"
    valid_problem_pddls = []
    for c in range(2, 5):
        for pl in range(2, 6):
            for p in range(3, 8):
                valid_problem_pddls += sorted(random.sample(["{}{}{}".format(c, pl, p)+'/'+ prob for prob in os.listdir("../benchmarks/ztravel/"+"{}{}{}".format(c, pl, p))], k=1))
    valid_problem_pddls = valid_problem_pddls[2::6]
    _log.info(f"Validation problems are: {valid_problem_pddls}.")

    models = [
        # "zenotravel_mode_train_search_novelty_all_True_novel_2_lifted_True_distance_0_bound_300-strips-hgn-02-14-19-10-04",
        "zenotravel_mode_train_search_bfs_all_True_distance_0_novel_2_lifted_True_auto_bslr_False-strips-hgn-02-10-15-20-49",
        "zenotravel_mode_train_auto_bslr_False_all_False_search_astar_distance_0_novel_0_lifted_False-strips-hgn-02-10-08-57-07",
    ]

    _VALID_CONFIGURATION = DomainAndProblemConfiguration(
        base_directory="../benchmarks/ztravel",
        domain_pddl="domain.pddl",
        problem_pddls=valid_problem_pddls,
        )
    
    for model in models:
        eval_wrapper(
            args=get_eval_args(
                configurations=[_VALID_CONFIGURATION],
                max_search_time=5*60,
                checkpoint= "../results/zenotravel/{}/model-best.ckpt".format(model),
            ),
            experiment_type=model.replace("train", "eval"),
            mode={'mode':'eval'},
        )