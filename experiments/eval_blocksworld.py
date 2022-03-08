from default_args import get_eval_args, DomainAndProblemConfiguration
from eval import eval_wrapper
import os 

def pad_str(s):
    
    if len(str(s)) < 2:
        return '0'+str(s)
    return str(s)

problem_pddls = []
for i in range(6, 16):
    problem_pddls += sorted([str(i)+'/'+ p for p in os.listdir("../benchmarks/blocksworld/"+str(i))])[:1]

_CONFIGURATION = DomainAndProblemConfiguration(
    base_directory="../benchmarks/blocksworld",
    domain_pddl="domain.pddl",
    problem_pddls=problem_pddls,
)

# assert len(_CONFIGURATION.problems) == 100

mode = {'mode':'eval'}# , {'mode':'train', 'all':False, 'search':'astar', 'distance': 0, 'novel':False, 'lifted':False}
model_name = "blocksworld_mode_train_all_False_search_astar_distance_0_novel_0_lifted_False"

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
