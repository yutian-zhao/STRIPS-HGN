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

mode={'mode':'train', 'all':False, 'search':'astar', 'distance': 0, 'novel':0, 'lifted':True}

if __name__ == "__main__":
    train_wrapper(
        args=get_training_args(
            configurations=[_CONFIGURATION],
            # 10 minutes
            max_training_time=10 * 60,
            num_folds=10,
            # batch_size=4,
            # learning_rate=0.002,
        ),
        experiment_type='npuzzle'+'_'+'_'.join([str(i)+'_'+str(j) for i, j in mode.items()]),
        mode=mode,
    )

