from default_args import get_eval_args, DomainAndProblemConfiguration
from eval import eval_wrapper

_CONFIGURATION = DomainAndProblemConfiguration(
    base_directory="../benchmarks/ferry",
    domain_pddl="ferry.pddl",
    problem_pddls=["test/ferry-l"+str(i)+"-c"+str(j)+".pddl" for i in range(2, 11) for j in [5, 10, 15, 20]],
)
# assert len(_CONFIGURATION.problems) == 17


if __name__ == "__main__":

    eval_wrapper(
        args=get_eval_args(
            configurations=[_CONFIGURATION],
            max_search_time=5*60,
            checkpoint= "../results/ferry_all_10/model-best.ckpt",
        )
    )