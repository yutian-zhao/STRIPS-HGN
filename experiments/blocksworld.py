from default_args import get_training_args, DomainAndProblemConfiguration
from train import train_wrapper
import os

_CONFIGURATION = DomainAndProblemConfiguration(
    base_directory="../benchmarks/blocksworld",
    domain_pddl="domain.pddl",
    # {3, 4, 5 blocks} x 10 problems = 30 problems
    problem_pddls=sorted(['3/'+ p for p in os.listdir("../benchmarks/blocksworld/3")])[:10]+
        sorted(['4/'+p for p in os.listdir("../benchmarks/blocksworld/4")])[:10]+
        sorted(['5/'+p for p in os.listdir("../benchmarks/blocksworld/5")])[:10]
)
assert len(_CONFIGURATION.problems) == 30

if __name__ == "__main__":
    count = 0
    # for search_algo in ['astar', 'bfs', 'novelty']:
    #     for all in [False, True]:
    #         for novel in [0, 2]:
    #             for lifted in [False, True]:
    #                 if not ((search_algo=='novelty' and ((all==False) or novel==0)) or (novel==0 and lifted==True) or (search_algo=='bfs' and all==False)):
    #                     if not count in [0]:                        
    #                         mode={'mode':'train', 'search':search_algo, 'all':all, 'distance': 0, 'novel':novel, 'lifted':lifted, 'auto_bslr': False}
                            # mode={'mode':'train', 'auto_bslr': True, 'all':True, 'search':'bfs', 'distance': 0, 'novel':0, 'lifted':False}
    mode={'mode':'train', 'all':True, 'search':'astar', 'distance': 0, 'novel':0, 'lifted':False, 'auto_bslr': False}
    train_wrapper(
        args=get_training_args(
            configurations=[_CONFIGURATION],
            # 10 minutes
            max_training_time=5 * 60,
            num_folds=10,
            batch_size=1,
            learning_rate=0.001,
        ),
        experiment_type='blocksworld'+'_'+'_'.join([str(i)+'_'+str(j) for i, j in mode.items()]),
        mode=mode,
    )
    count += 1

    # for distance in range(1, 6):
    #     mode={'mode':'train', 'search':'bfs', 'all':True, 'distance': distance, 'novel':0, 'lifted':False, 'auto_bslr': False}
