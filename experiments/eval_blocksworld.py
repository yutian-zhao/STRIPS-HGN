from default_args import get_eval_args, DomainAndProblemConfiguration
from eval import eval_wrapper

def pad_str(s):
    
    if len(str(s)) < 2:
        return '0'+str(s)
    return str(s)

_CONFIGURATION = DomainAndProblemConfiguration(
    base_directory="../benchmarks/blocks-slaney",
    domain_pddl="domain.pddl",
    problem_pddls=["blocks{0}/task{1}.pddl".format(i, pad_str(j)) for i in range(6, 11) for j in range(1, 21)],
)

assert len(_CONFIGURATION.problems) == 100


if __name__ == "__main__":

    eval_wrapper(
        args=get_eval_args(
            configurations=[_CONFIGURATION],
            max_search_time=5*60,
            checkpoint= "../results/blocksworld_bfs300_10_fold3/model-best.ckpt",
        )
    )
