from default_args import get_training_args, DomainAndProblemConfiguration
from train import train_wrapper
from strips_hgn.utils.helpers import mode_to_str
import os

_CONFIGURATION = DomainAndProblemConfiguration(
    base_directory="../benchmarks/blocksworld",
    domain_pddl="domain.pddl",
    # {3, 4, 5 blocks} x 10 problems = 30 problems
    problem_pddls=sorted(['10/'+ p for p in os.listdir("../benchmarks/blocksworld/10")])[:1]+
        sorted(['11/'+p for p in os.listdir("../benchmarks/blocksworld/11")])[:1]+
        sorted(['12/'+p for p in os.listdir("../benchmarks/blocksworld/12")])[:1]
)
assert len(_CONFIGURATION.problems) == 30

if __name__ == "__main__":
    repeats = 3
    modes=[
        {'domain':'blocksworld', 'mode':'train', 'search':'astar', 'all':False, 'novel':0, 'lifted':False, 'distance': 0, 'auto_bslr': False},
        {'domain':'blocksworld', 'mode':'train', 'search':'astar', 'all':False, 'novel':2, 'lifted':False, 'distance': 0, 'auto_bslr': False},
        {'domain':'blocksworld', 'mode':'train', 'search':'astar', 'all':False, 'novel':2, 'lifted':True, 'distance': 0, 'auto_bslr': False},
        {'domain':'blocksworld', 'mode':'train', 'search':'astar', 'all':True, 'novel':0, 'lifted':False, 'distance': 0, 'auto_bslr': False},
        {'domain':'blocksworld', 'mode':'train', 'search':'bfs', 'all':False, 'novel':2, 'lifted':False, 'distance': 0, 'auto_bslr': False},
        {'domain':'blocksworld', 'mode':'train', 'search':'bfs', 'all':False, 'novel':2, 'lifted':True, 'distance': 0, 'auto_bslr': False},
        {'domain':'blocksworld', 'mode':'train', 'search':'bfs', 'all':True, 'novel':0, 'lifted':False, 'distance': 0, 'auto_bslr': False},
        {'domain':'blocksworld', 'mode':'train', 'search':'novelty', 'all':True, 'novel':2, 'lifted':False, 'distance': 0, 'auto_bslr': False},
        {'domain':'blocksworld', 'mode':'train', 'search':'novelty', 'all':True, 'novel':2, 'lifted':True, 'distance': 0, 'auto_bslr': False},
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


    # for distance in range(1, 6):
    #     mode={'mode':'train', 'search':'bfs', 'all':True, 'distance': distance, 'novel':0, 'lifted':False, 'auto_bslr': False}
