import os
import sys
import subprocess

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

def natural_sort(l):
    """ https://stackoverflow.com/a/4836734 """
    convert = lambda text: int(text) if text.isdigit() else text.lower()
    alphanum_key = lambda key: [convert(c) for c in re.split("([0-9]+)", key)]
    return sorted(l, key=alphanum_key)

def generate_problems(generator, args, num, domain_name, output_dir):
    for i in range(num):
        # Notice, if shell=False, output files may be weird.
        proc = subprocess.run(generator+args, capture_output=True, shell=True) 
        randn = random.randint(1000, 9999)
        fname = domain_name+''.join(args).strip(" ")+'-'+str(randn)+'.pddl'
        while os.path.exists(os.path.join(output_dir, fname)):
            randn = random.randint(1000, 9999)
            fname = domain_name+''.join(args).strip(" ")+'-'+str(randn)+'.pddl'
        with open(os.path.join(output_dir, fname), 'bw') as file:
            # print(proc.stdout)
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
    # num = 10
    # domain_file = "../benchmarks/sokoban/typed-sokoban.pddl"

    generator = "./../../pddl-generators/blocksworld/blocksworld 4 "
    domain_name = 'blocksworld'
    arg_list = [str(i) for i in range(3, 16)]
    domain_dir = "../benchmarks/blocksworld/"
    num = 20
    domain_file = "../benchmarks/blocksworld/domain.pddl"

    for idx, args in enumerate(arg_list):
        print(f"===== Processing Args {''.join(args).strip(' ')} idx {idx} =====")
        output_dir = domain_dir+''.join(args).strip(" ")

        if not os.path.exists(output_dir):
            os.mkdir(output_dir)

        validated_probs = 0
        count = 0

        while validated_probs < num:
            init_and_goals = {}
            identical_probs = 0
            initial_is_goal = 0
            count += 1
            for file in os.listdir(output_dir):
                if not file.endswith(".pddl"):
                    print(f"Args {''.join(args).strip(' ')} idx {idx} run {count}: Ignoring {file}")
                    continue

                if file == "slaney_gen.pddl" or file == 'domain.pddl':
                    # For the blocks-slaney file structure
                    # TODO: Problem naming collision.
                    # May need to repicate or modify structure files.
                    continue

                prob_file = os.path.join(output_dir, file)
                print(prob_file)
                print(f"Args {''.join(args).strip(' ')} idx {idx} run {count}: Processing {prob_file}")
                _, task = get_domain_and_task(domain_file, prob_file)

                key = (task.initial_state, task.goals)
                if task.goal_reached(task.initial_state):
                    print(f"Args {''.join(args).strip(' ')} idx {idx} run {count}: INITIAL STATE IS GOAL STATE!!!")
                    print(f"Removing {prob_file}")
                    os.remove(prob_file)
                    initial_is_goal += 1
                    continue

                if key in init_and_goals:
                    print(f"Args {''.join(args).strip(' ')} idx {idx} run {count}: Initial state and goal already encountered in {init_and_goals[key]}")
                    print(f"Removing {prob_file}")
                    os.remove(prob_file)
                    identical_probs += 1
                    continue
                else:
                    init_and_goals[key] = prob_file
                    validated_probs += 1
                    # print("  - Testing if the problem is trivial.")
                    # sol, _ = find_solution(task, LmCutHeuristic(task), astar_search, 5)
                    # if sol:
                    #     print(len(sol), ": ", prob_file)

            print(f"Args {''.join(args).strip(' ')} idx {idx} run {count}: {identical_probs} problems are not unique")
            print(f"Args {''.join(args).strip(' ')} idx {idx} run {count}: {initial_is_goal} initial states are goals")
            print(f"Args {''.join(args).strip(' ')} idx {idx} run {count}: {validated_probs}/{num} problems are verified.")

            if num-validated_probs > 0:
                print(f"Args {''.join(args).strip(' ')} idx {idx} run {count}: generating {num-validated_probs} new problems.")
                generate_problems(generator, args, num-validated_probs, domain_name, output_dir)
                validated_probs = 0
            else:
                print(f"Args {''.join(args).strip(' ')} idx {idx} run {count}: Complete.")

            
