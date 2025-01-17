from default_args import get_eval_args, DomainAndProblemConfiguration
from eval import eval_wrapper

_CONFIGURATION = DomainAndProblemConfiguration(
    base_directory="../benchmarks/ferry",
    domain_pddl="ferry.pddl",
    problem_pddls=["test/ferry-l"+str(i)+"-c"+str(j)+".pddl" for i in range(2, 11) for j in [5, 10, 15, 20]],
)
# assert len(_CONFIGURATION.problems) == 17

models = [
        "ferry_ori_3",
        "ferry_all_3",
    ]


if __name__ == "__main__":
    for model in models:
        eval_wrapper(
            args=get_eval_args(
                configurations=[_CONFIGURATION],
                max_search_time=5*60,
                checkpoint= "../results/ferry/{}/model-best.ckpt".format(model),
            ),
            experiment_type=model.replace("train", "eval"),
            mode={'mode':'eval'},
        )