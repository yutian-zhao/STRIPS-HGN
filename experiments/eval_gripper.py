from default_args import get_eval_args, DomainAndProblemConfiguration
from eval import eval_wrapper

_CONFIGURATION = DomainAndProblemConfiguration(
    base_directory="../benchmarks/gripper",
    domain_pddl="domain.pddl",
    problem_pddls=["problems/gripper-n"+str(i)+".pddl" for i in range(5, 21, 5)],
)
# assert len(_CONFIGURATION.problems) == 17

models = [
        "gripper_ori_90",
        "gripper_all_90",
    ]

if __name__ == "__main__":

    for model in models:
        eval_wrapper(
            args=get_eval_args(
                configurations=[_CONFIGURATION],
                max_search_time=5*60,
                checkpoint= "../results/gripper/{}/model-best.ckpt".format(model),
            ),
            experiment_type=model.replace("train", "eval"),
            mode={'mode':'eval'},
        )