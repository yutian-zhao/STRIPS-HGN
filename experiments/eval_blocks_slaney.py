from default_args import get_eval_args, DomainAndProblemConfiguration
from eval import eval_wrapper

def pad_str(s):
    
    if len(str(s)) < 2:
        return '0'+str(s)
    return str(s)

_CONFIGURATION = DomainAndProblemConfiguration(
    base_directory="../benchmarks/blocks-slaney",
    domain_pddl="domain.pddl",
    problem_pddls=["blocks{0}/task{1}.pddl".format(i, pad_str(j)) for i in range(6, 16) for j in range(1, 2)],
)

# assert len(_CONFIGURATION.problems) == 100

mode = {'mode':'eval'}# , {'mode':'train', 'all':False, 'search':'astar', 'distance': 0, 'novel':False, 'lifted':False}
model_name = "blocksworld_mode_train_search_novelty_all_True_distance_0_novel_2_lifted_False_auto_bslr_False-strips-hgn-02-10-12-11-59"

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
