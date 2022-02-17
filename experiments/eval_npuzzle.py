from default_args import get_eval_args, DomainAndProblemConfiguration
from eval import eval_wrapper
import os


base_directory="../benchmarks/n-puzzle/test"
domain_pddl="domain.pddl"
problem_pddls = []

for root, dirs, files in os.walk(os.path.join(base_directory)):
    for fname in files:
        if fname.startswith("n-puzzle-3x3-s"):
            problem_pddls.append(fname)
    break

problem_pddls = sorted(problem_pddls)

_CONFIGURATION = DomainAndProblemConfiguration(
    base_directory=base_directory,
    domain_pddl=domain_pddl,
    problem_pddls=problem_pddls,
)

assert len(_CONFIGURATION.problems) == 50, "number of problems should be 50 instead of {}".format(len(_CONFIGURATION.problems))

mode = {'mode':'eval'}# , {'mode':'train', 'all':False, 'search':'astar', 'distance': 0, 'novel':False, 'lifted':False}

model_name = "npuzzle_mode_train_all_False_search_astar_distance_0_novel_0_lifted_False"

if __name__ == "__main__":

    eval_wrapper(
        args=get_eval_args(
            configurations=[_CONFIGURATION],
            max_search_time=5*60,
            checkpoint= "../results/{}/model-best.ckpt".format(model_name),
        ),
        experiment_type=model_name.replace("train", "eval"),
        mode=mode,
    )
