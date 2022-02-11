from default_args import get_training_args, DomainAndProblemConfiguration
from train import train_wrapper
import logging
import os

_log = logging.getLogger(__name__)

_CONFIGURATION = DomainAndProblemConfiguration(
    base_directory="../benchmarks/n-puzzle",
    domain_pddl="domain.pddl",
    # 10 x (3 by 3 problems) = 30 problems
    problem_pddls=[
        "train/n-puzzle-3x3-s30.pddl",
        "train/n-puzzle-3x3-s31.pddl",
        "train/n-puzzle-3x3-s32.pddl",
        "train/n-puzzle-3x3-s33.pddl",
        "train/n-puzzle-3x3-s34.pddl",
        "train/n-puzzle-3x3-s35.pddl",
        "train/n-puzzle-3x3-s36.pddl",
        "train/n-puzzle-3x3-s37.pddl",
        "train/n-puzzle-3x3-s38.pddl",
        "train/n-puzzle-3x3-s39.pddl",
    ],
)
assert len(_CONFIGURATION.problems) == 10



if __name__ == "__main__":
    # count = 0
    # for search_algo in ['astar', 'bfs', 'novelty']:
    #     for all in [True, False]:
    #         for novel in [0, 2]:
    #             for lifted in [True, False]:
    #                 if not ((search_algo=='novelty' and ((all==False ) or novel==0)) or (novel==0 and lifted==True)):                        
    #                     # if count >= 6:
    #                       mode={'mode':'train', 'auto_bslr': True, 'all':all, 'search':search_algo, 'distance': 0, 'novel':novel, 'lifted':lifted}
    for distance in range(1, 6):
        mode={'mode':'train', 'search':'bfs', 'all':True, 'distance': distance, 'novel':0, 'lifted':False, 'auto_bslr': False}
    # mode={'mode':'train', 'auto_bslr': False, 'all':True, 'search':'astar', 'distance': 0, 'novel':False, 'lifted':False}
    train_wrapper(
        args=get_training_args(
            configurations=[_CONFIGURATION],
            # 10 minutes
            max_training_time=5 * 60,
            num_folds=10,
            batch_size=4,
            learning_rate=0.002,
        ),
        experiment_type='npuzzle'+'_'+'_'.join([str(i)+'_'+str(j) for i, j in mode.items()]),
        mode=mode,
    )
    #                     count += 1

    # MODEL_NAMES = []
    # for root, dirs, files in os.walk("../results/"):
    #     for dirname in dirs:
    #         if dirname.startswith("npuzzle_mode_train"):
    #             MODEL_NAMES.append(dirname)
    #     break
    # MODEL_NAMES = sorted(MODEL_NAMES)
    # # print(len(MODEL_NAMES))

    # for search_algo in ['astar', 'bfs', 'novelty']:
    #     for all in [True, False]:
    #         for novel in [0, 2]:
    #             for lifted in [True, False]:
    #                 if not ((search_algo=='novelty' and ((all==False ) or novel==0)) or (novel==0 and lifted==True)):
    #                     mode={'all':all, 'search':search_algo, 'distance': 0, 'novel':novel, 'lifted':lifted}
    #                     dirname = '_'.join([str(i)+'_'+str(j) for i, j in mode.items()])
    #                     contains = False
    #                     for mn in MODEL_NAMES:
    #                         if dirname in mn:
    #                             # print("here")
    #                             contains = True
    #                             break
    #                     if not contains:
    #                         _log.warning("Missing {}.".format(dirname))
    # _log.info("Experiment script completed.")


