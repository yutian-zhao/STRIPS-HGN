from default_args import get_training_args, DomainAndProblemConfiguration
from train import train_wrapper

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
    for search_algo in ['astar', 'bfs', 'novelty']:
        for all in [True, False]:
            for novel in [0, 2]:
                for lifted in [True, False]:
                    if not ((search_algo=='novelty' and ((all==False ) or novel==0)) or (novel==0 and lifted==True)):
                        mode={'mode':'train', 'all':all, 'search':search_algo, 'distance': 0, 'novel':novel, 'lifted':lifted}
                        train_wrapper(
                            args=get_training_args(
                                configurations=[_CONFIGURATION],
                                # 10 minutes
                                max_training_time=10 * 60,
                                num_folds=10,
                                # batch_size=4,
                                # learning_rate=0.004,
                            ),
                            experiment_type='npuzzle'+'_'+'_'.join([str(i)+'_'+str(j) for i, j in mode.items()]),
                            mode=mode,
                        )

