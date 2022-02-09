import os
import sys
import subprocess

from pyperplan.api import get_task
import re
import random

def natural_sort(l):
    """ https://stackoverflow.com/a/4836734 """
    convert = lambda text: int(text) if text.isdigit() else text.lower()
    alphanum_key = lambda key: [convert(c) for c in re.split("([0-9]+)", key)]
    return sorted(l, key=alphanum_key)

def generate_problems(generator, args, num, domain_name, output_dir):
    for i in range(num):
        proc = subprocess.run([generator, *args])
        randn = random.randint(1000, 9999)
        fname = domain_name+''.join(args).strip(" ")+'-'+randn+'.pddl'
        while os.path.exists(os.path.join(output_dir, fname)):
            randn = random.randint(1000, 9999)
            fname = domain_name+''.join(args).strip(" ")+'-'+randn+'.pddl'
        with open(fname, 'w') as file:
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
    generator = "./../../pddl-generators/sokoban/rando/sokoban-generator-typed"
    domain_name = 'sokoban'
    args = ['-n 5', '-b 2', '-w 3']
    output_dir = "../benchmarks/sokoban/"
    num = 2
    generate_problems(generator, args, num, domain_name, output_dir)
    # domain_file = sys.argv[1]
    # init_and_goals = {}

    # identical_probs = 0
    # initial_is_goal = 0

    # prob_dirs = sys.argv[2:]

    # for prob_dir in prob_dirs:
    #     print(f"===== Processing directory {prob_dir} =====")
    #     for file in natural_sort(os.listdir(prob_dir)):
    #         if not file.endswith(".pddl"):
    #             print(f"Ignoring {file}")
    #             continue

    #         if file == "slaney_gen.pddl":
    #             # For the blocks-slaney file structure
    #             continue

    #         prob_file = os.path.join(prob_dir, file)
    #         print(f"Processing {prob_file}")
    #         task = get_task(domain_file, prob_file)

    #         key = (task.initial_state, task.goals)
    #         if task.goal_reached(task.initial_state):
    #             print("  - INITIAL STATE IS GOAL STATE!!!")
    #             initial_is_goal += 1

    #         if key in init_and_goals:
    #             print(
    #                 f"  - Initial state and goal already encountered in {init_and_goals[key]}"
    #             )
    #             identical_probs += 1
    #         else:
    #             init_and_goals[key] = prob_file

    # if identical_probs == 0:
    #     print("All problems are unique!")
    # else:
    #     print(f"{identical_probs} problems are not unique")

    # print(f"{initial_is_goal} initial states are goals")