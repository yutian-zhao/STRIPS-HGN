import json
from collections import defaultdict
import matplotlib.pyplot as plt 
import numpy as np
import math
from strips_hgn.workflows.test_workflow import compare_heuristics_1, compare_heuristics_2
import os
import functools
import plotly.graph_objects as go
import logging

_log = logging.getLogger(__name__)

# MODEL_NAMES = ["blocksworld_ori_10", "blocksworld_mode_train_all_False_search_bfs_distance_5_novel_1", "blocksworld_mode_train_all_False_search_bfs_distance_0_novel_1", "blocksworld_ori_10","blocksworld_uniform300_10", "blocksworld_bfs300_10_fold3", "blocksworld_bfs_novel300_10min_fold10_1", 
# "blocksworld_bfs_novel300_15min_fold10_1", "blocksworld_novel_bfs_nontrivial_15min_fold10_1"]
HEURISTIC = 'strips-hgn'
base_directory="../benchmarks/blocksworld"
domain_pddl="domain.pddl"

problem_pddls = []
for i in range(10, 11):
    problem_pddls += sorted([str(i)+'/'+ p for p in os.listdir("../benchmarks/blocksworld/"+str(i))])[:3]
for p in problem_pddls:
    if not os.path.exists(os.path.join(base_directory, p)):
        print(f'Warning: {p} does not exist.')


MODEL_NAMES = []
checkpoints = []
losses = []
data_amounts = []
for root, dirs, files in os.walk("../results/", topdown=True):
    for dirname in dirs:
        # if dirname.startswith("blocksworld_mode_train"):
        if "mode_train" in dirname:
            if os.path.exists(os.path.join("../results/", dirname, "model-best.ckpt")):
            # if os.path.exists(os.path.join("../results/blocksworld", dirname, "fold_0")):
            #     checkpoints.append(os.path.join("../results/blocksworld", \
            #         dirname, "fold_0", sorted(os.listdir(os.path.join("../results/blocksworld", dirname, "fold_0")))[0]))
                checkpoints.append(os.path.join("../results/", dirname, "model-best.ckpt"))
                MODEL_NAMES.append(dirname)
                loss=float('inf')
                data_amount=None
                with open(os.path.join("../results/", dirname, "strips_hgn.log"), encoding='utf-8') as f:
                    lines = f.readlines()
                    for l in lines:
                        if not data_amount:
                            if "training pairs in total" in l:
                                data_amount = int(l.split(" ")[-5])
                        if '(best ' in l:
                            if loss > float(l[(l.find('(best ')+6): (l.find('(best ')+10)]):
                                loss = float(l[(l.find('(best ')+6): (l.find('(best ')+10)])
                if loss == float('inf'):
                    print(f"Warning: model {dirname} has inf loss.")
                if not data_amount:
                    print(f"Warning: data amount hasn't been found for model {dirname}.")
                losses.append(loss)
                data_amounts.append(data_amount)
    break
print(len(MODEL_NAMES), len(losses))
print(losses)
print(problem_pddls)
mode={'mode':'eval', 'heuristic':'lm-cut'}
_log.info("Start extracting...")
h_values = compare_heuristics_1(base_directory, domain_pddl, problem_pddls, checkpoints, mode)

