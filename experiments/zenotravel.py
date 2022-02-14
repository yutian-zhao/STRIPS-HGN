from default_args import get_training_args, DomainAndProblemConfiguration
from train import train_wrapper
from strips_hgn.utils.helpers import mode_to_str
import logging
import os

_log = logging.getLogger(__name__)

base_directory="../benchmarks/zenotravel"
domain_pddl="domain.pddl"
problem_pddls = []

for root, dirs, files in os.walk(os.path.join(base_directory, "train")):
    for fname in files:
        if fname.endswith('.pddl'):
            problem_pddls.append("train/"+fname)
    break
problem_pddls = sorted(problem_pddls)


_CONFIGURATION = DomainAndProblemConfiguration(
    base_directory=base_directory,
    domain_pddl=domain_pddl,
    # 20 problems
    problem_pddls=problem_pddls,
)
assert len(_CONFIGURATION.problems) == 20



if __name__ == "__main__":
    repeats = 3
    modes=[
        {'domain':'zenotravel', 'mode':'train', 'search':'astar', 'all':False, 'novel':0, 'lifted':False, 'distance': 0, 'auto_bslr': False},
        {'domain':'zenotravel', 'mode':'train', 'search':'astar', 'all':False, 'novel':2, 'lifted':False, 'distance': 0, 'auto_bslr': False},
        {'domain':'zenotravel', 'mode':'train', 'search':'astar', 'all':False, 'novel':2, 'lifted':True, 'distance': 0, 'auto_bslr': False},
        {'domain':'zenotravel', 'mode':'train', 'search':'astar', 'all':True, 'novel':False, 'lifted':False, 'distance': 0, 'auto_bslr': False},
        {'domain':'zenotravel', 'mode':'train', 'search':'bfs', 'all':False, 'novel':2, 'lifted':False, 'distance': 0, 'auto_bslr': False},
        {'domain':'zenotravel', 'mode':'train', 'search':'bfs', 'all':False, 'novel':2, 'lifted':True, 'distance': 0, 'auto_bslr': False},
        {'domain':'zenotravel', 'mode':'train', 'search':'bfs', 'all':True, 'novel':0, 'lifted':False, 'distance': 0, 'auto_bslr': False},
        {'domain':'zenotravel', 'mode':'train', 'search':'novelty', 'all':True, 'novel':2, 'lifted':False, 'distance': 0, 'auto_bslr': False},
        {'domain':'zenotravel', 'mode':'train', 'search':'novelty', 'all':True, 'novel':2, 'lifted':True, 'distance': 0, 'auto_bslr': False},
    ]
    for i in range(repeats):
        for mode in modes:
            train_wrapper(
                args=get_training_args(
                    configurations=[_CONFIGURATION],
                    # 10 minutes
                    max_training_time=10 * 60,
                    num_folds=10,
                    # batch_size=32,
                    # learning_rate=0.005,
                ),
                experiment_type=mode_to_str(mode),
                mode=mode,
            )

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


