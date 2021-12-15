from default_args import get_eval_args, DomainAndProblemConfiguration
from eval import eval_wrapper

_CONFIGURATION = DomainAndProblemConfiguration(
    base_directory="../benchmarks/gripper",
    domain_pddl="domain.pddl",
    problem_pddls=["problems/gripper-n"+str(i)+".pddl" for i in range(4, 21)],
)
assert len(_CONFIGURATION.problems) == 17


if __name__ == "__main__":

    eval_wrapper(
        args=get_eval_args(
            configurations=[_CONFIGURATION],
            max_search_time=1*60,
            checkpoint= "../results/train-strips-hgn-2021-12-09T13_06_58.353251/model-best.ckpt",
        )
    )