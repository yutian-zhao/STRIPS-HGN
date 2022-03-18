import os
import sys
import subprocess
import logging

from strips_hgn.planning.pyperplan_api import get_domain_and_task, find_solution
import re
import random

import pyperplan.grounding as grounding
from pyperplan.heuristics.blind import BlindHeuristic
from pyperplan.heuristics.heuristic_base import Heuristic
from pyperplan.heuristics.lm_cut import LmCutHeuristic
from pyperplan.heuristics.relaxation import (
    hAddHeuristic,
    hFFHeuristic,
    hMaxHeuristic,
)
from pyperplan.pddl.parser import Parser
from pyperplan.pddl.pddl import Domain, Problem
from pyperplan.search import SearchMetrics, astar_search, breadth_first_search, novelty_search
from pyperplan.task import Task

_log = logging.getLogger(__name__)

def natural_sort(l):
    """ https://stackoverflow.com/a/4836734 """
    convert = lambda text: int(text) if text.isdigit() else text.lower()
    alphanum_key = lambda key: [convert(c) for c in re.split("([0-9]+)", key)]
    return sorted(l, key=alphanum_key)

def generate_problems(generator, args, num, domain_name, output_dir):
    for i in range(num):
        # Notice, if shell=False, output files may be weird.
        randn = random.randint(1000, 9999)
        # proc = subprocess.run(generator+str(randn)+' '+args, capture_output=True, shell=True) 
        proc = subprocess.run(generator+args, capture_output=True, shell=True) 
        fname = domain_name+''.join(args).replace(' ', '')+'-'+str(randn)+'.pddl'
        while os.path.exists(os.path.join(output_dir, fname)):
            randn = random.randint(1000, 9999)
            fname = domain_name+''.join(args).replace(' ', '')+'-'+str(randn)+'.pddl'
        with open(os.path.join(output_dir, fname), 'bw') as file:
            # _log.info(proc.stdout)
            file.write(proc.stdout)
        

"""
Checks problems in given directories are unique by comparing their initial state
and goal state.
DOES NOT CHECK FOR OBJECT NAMING DIFFERENCES!
Usage:
python identical_problems.py <domain_pddl> <dir-1> <dir-2> ... <dir-n>
Each dir is a directory containing PDDL problem instances
"""
if __name__ == "__main__":

    # generator = "./../../pddl-generators/sokoban/random/sokoban-generator-typed"
    # domain_name = 'sokoban'
    # arg_list = [['-n', '5', '-b', '2', '-w', '3'],
    #         ['-n', '5', '-b', '2', '-w', '4'],
    #         ['-n', '5', '-b', '2', '-w', '5'],
    #         ['-n', '9', '-b', '2', '-w', '3'],
    #         ['-n', '9', '-b', '2', '-w', '4'],
    #         ['-n', '9', '-b', '2', '-w', '5'],
    #         ['-n', '7', '-b', '2', '-w', '3'],
    #         ['-n', '7', '-b', '2', '-w', '4'],
    #         ['-n', '7', '-b', '2', '-w', '5'],
    #         ['-n', '8', '-b', '2', '-w', '3'],
    #         ['-n', '8', '-b', '2', '-w', '4'],
    #         ['-n', '8', '-b', '2', '-w', '5'],
    # ]
    # domain_dir = "../benchmarks/sokoban/"
    # num = 20
    # domain_file = "../benchmarks/sokoban/typed-sokoban.pddl"

    # generator = "./../../pddl-generators/blocksworld/blocksworld 4 "
    # domain_name = 'blocksworld'
    # arg_list = [str(i) for i in range(3, 21)]
    # domain_dir = "../benchmarks/blocksworld/"
    # num = 50
    # domain_file = "../benchmarks/blocksworld/domain.pddl"

    # generator = "./../../pddl-generators/npuzzle/n-puzzle-generator -n "
    # domain_name = 'npuzzle'
    # arg_list = [str(i) for i in range(3,4)]
    # domain_dir = "../benchmarks/npuzzle/"
    # num = 100
    # domain_file = "../benchmarks/npuzzle/n-puzzle-typed.pddl"

    # generator = "./../../pddl-generators/zenotravel/ztravel "
    # domain_name = 'ztravel'
    # arg_list = []
    # for c in range(2, 5):
    #     for pl in range(2, 6):
    #         for p in range(3, 8):
    #             arg_list.append("{} {} {}".format(c, pl, p))
    # domain_dir = "../benchmarks/ztravel/"
    # num = 5
    # domain_file = "../benchmarks/ztravel/domain.pddl"

    generator = "./../../pddl-generators/mbw/matching-bw-generator.sh "
    domain_name = 'mbw'
    arg_list = ["mbw"+str(i)+" "+str(i) for i in range(3, 9)]
    domain_dir = "../benchmarks/mbw/"
    num = 30
    domain_file = "../benchmarks/mbw/matching-bw-typed.pddl"

    file_handler = logging.FileHandler(os.path.join(domain_dir, 'generate_problems.log'))
    file_handler.setLevel(logging.INFO)
    stream_handler = logging.StreamHandler()
    stream_handler.setLevel(logging.INFO)
    _log.setLevel(logging.INFO)
    _log.addHandler(file_handler)
    _log.addHandler(stream_handler)

    for idx, args in enumerate(arg_list):
        _log.info(f"===== Processing Args {''.join(args).replace(' ', '')} idx {idx} =====")
        output_dir = domain_dir+''.join(args).replace(' ', '')

        if not os.path.exists(output_dir):
            os.mkdir(output_dir)

        validated_probs = 0
        count = 0

        while validated_probs < num:
            init_and_goals = {}
            identical_probs = 0
            initial_is_goal = 0
            trivial_probs = 0
            count += 1
            for file in os.listdir(output_dir):
                if not file.endswith(".pddl"):
                    _log.info(f"Args {''.join(args).replace(' ', '')} idx {idx} run {count}: Ignoring {file}")
                    continue

                if file == "slaney_gen.pddl" or file == 'domain.pddl':
                    # For the blocks-slaney file structure
                    # TODO: Problem naming collision.
                    # May need to repicate or modify structure files.
                    continue

                prob_file = os.path.join(output_dir, file)
                _log.info(f"Args {''.join(args).replace(' ', '')} idx {idx} run {count}: Processing {prob_file}")
                _, task = get_domain_and_task(domain_file, prob_file)

                key = (task.initial_state, task.goals)
                if task.goal_reached(task.initial_state):
                    _log.info(f"Args {''.join(args).replace(' ', '')} idx {idx} run {count}: INITIAL STATE IS GOAL STATE!!!")
                    _log.info(f"Removing {prob_file}")
                    os.remove(prob_file)
                    initial_is_goal += 1
                    continue

                if key in init_and_goals:
                    _log.info(f"Args {''.join(args).replace(' ', '')} idx {idx} run {count}: Initial state and goal already encountered in {init_and_goals[key]}")
                    _log.info(f"Removing {prob_file}")
                    os.remove(prob_file)
                    identical_probs += 1
                    continue
                else:
                    _log.info("  - Testing if the problem is trivial.")
                    sol, _ = find_solution(task, LmCutHeuristic(task), astar_search, 0.1)
                    if sol:
                        if len(sol) < 5:
                            _log.info(f"Args {''.join(args).replace(' ', '')} idx {idx} run {count}: problem is trivial.")
                            _log.info(f"Removing {prob_file}")
                            os.remove(prob_file)
                            trivial_probs+=1
                        else:
                            init_and_goals[key] = prob_file
                            validated_probs += 1
                            _log.info(f"Args {''.join(args).replace(' ', '')} idx {idx} run {count} {prob_file} solution length: {len(sol)}.")
                    else:
                        init_and_goals[key] = prob_file
                        validated_probs += 1

            _log.info(f"Args {''.join(args).replace(' ', '')} idx {idx} run {count}: {identical_probs} problems are not unique.")
            _log.info(f"Args {''.join(args).replace(' ', '')} idx {idx} run {count}: {initial_is_goal} initial states are goals.")
            _log.info(f"Args {''.join(args).replace(' ', '')} idx {idx} run {count}: {trivial_probs} problems are trivial.")
            _log.info(f"Args {''.join(args).replace(' ', '')} idx {idx} run {count}: {validated_probs}/{num} problems are verified.")

            if num-validated_probs > 0:
                _log.info(f"Args {''.join(args).replace(' ', '')} idx {idx} run {count}: generating {num-validated_probs} new problems.")
                generate_problems(generator, args, num-validated_probs, domain_name, output_dir)
                validated_probs = 0
            else:
                _log.info(f"Args {''.join(args).replace(' ', '')} idx {idx} run {count}: Complete.")

    pattern = r"\(define\s\(problem\s(.*)\)"
    for root, dirs, files in os.walk(domain_dir):
        for file in files:
            if file.endswith('.pddl') and file != "slaney_gen.pddl" and file != 'domain.pddl':
                lines = None
                with open(os.path.join(root, file), 'r') as f:
                    lines = f.readlines()
                with open(os.path.join(root, file), 'w') as f:
                    for l in lines:
                        match = re.findall(pattern, l)
                        if len(match) >0:
                            l = l.replace(match[0], file[:-5])
                        f.write(l)
    

