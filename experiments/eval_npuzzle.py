import os
import random 
import json
import logging
from datetime import datetime

from eval import eval_wrapper
from train import train_wrapper
from strips_hgn.utils.helpers import mode_to_str
from strips_hgn.utils.logging_setup import setup_full_logging
from default_args import get_training_args, DomainAndProblemConfiguration, get_eval_args

_log = logging.getLogger(__name__)

if __name__ == "__main__":
    # base_directory = "../results/zenotravel"
    # domain_pddl="domain.pddl"
    valid_problem_pddls = []
    for i in range(3,4):
        valid_problem_pddls += sorted(random.sample([str(i)+'/'+ p for p in os.listdir("../benchmarks/npuzzle/"+str(i))], k=5))
    _log.info(f"Validation problems are: {valid_problem_pddls}.")
    for pddl in valid_problem_pddls:
        used_problems.add(pddl)

    models = [
        "npuzzle_mode_train_all_False_search_astar_distance_0_novel_2_lifted_False-strips-hgn-02-05-18-55-21",
        "npuzzle_mode_train_auto_bslr_True_all_True_search_novelty_distance_0_novel_2_lifted_False-strips-hgn-02-06-23-11-52",
        "npuzzle_mode_train_all_False_search_bfs_distance_0_novel_2_lifted_False",
        "npuzzle_mode_train_all_False_search_astar_distance_0_novel_0_lifted_False",
    ]

    _VALID_CONFIGURATION = DomainAndProblemConfiguration(
        base_directory="../benchmarks/npuzzle",
        domain_pddl="n-puzzle-typed.pddl",
        problem_pddls=valid_problem_pddls,
        )
    
    for model in models:
        eval_wrapper(
            args=get_eval_args(
                configurations=[_VALID_CONFIGURATION],
                max_search_time=5*60,
                checkpoint= "../results/n-puzzle/{}/model-best.ckpt".format(model),
            ),
            experiment_type=model.replace("train", "eval"),
            mode={'mode':'eval'},
        )