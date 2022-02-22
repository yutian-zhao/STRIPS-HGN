import os
import sys
import functools
import matplotlib.pyplot as plt 
import logging


from pyperplan.search import searchspace
# from strips_hgn.training_data import _generate_optimal_state_value_pairs_for_problem
from strips_hgn.planning.pyperplan_api import get_optimal_actions_using_py
from strips_hgn.utils.args.base_args import BaseArgs

from hypergraph_nets.hypergraphs import HypergraphsTuple
from strips_hgn.hypergraph.delete_relaxation import (
    DeleteRelaxationHypergraphView,
)
from strips_hgn.models.heuristic import STRIPSHGNHeuristic
from strips_hgn.models.strips_hgn import STRIPSHGN
from strips_hgn.planning import (
    Heuristic,
    PlannerForEvaluation,
    SearchAlgorithm,
    STRIPSProblem,
)
from strips_hgn.workflows.base_workflow import BaseFeatureMappingWorkflow

_log = logging.getLogger(__name__)

# added by yutian
def model_to_heuristics(checkpoint, problem):
    model = STRIPSHGN.load_from_checkpoint(checkpoint)
    model.eval()
    model.setup_prediction_mode()
    hypergraph = DeleteRelaxationHypergraphView(problem)
    hparams = model.hparams

    wf = BaseFeatureMappingWorkflow(
        global_feature_mapper_cls=hparams.global_feature_mapper_cls,
        node_feature_mapper_cls=hparams.node_feature_mapper_cls,
        hyperedge_feature_mapper_cls=hparams.hyperedge_feature_mapper_cls,
        max_receivers=model.hparams.receiver_k,
        max_senders=model.hparams.sender_k,
    )

    def state_to_input_h_tup(state) -> HypergraphsTuple:
        return wf._get_input_hypergraphs_tuple(state, hypergraph)

    return STRIPSHGNHeuristic(model, state_to_input_h_tup, PlannerForEvaluation.pyperplan)


def compare_heuristics_0(base_directory, domain_pddl, problem_pddls, checkpoints, mode={'mode':'eval'}):
    models = [STRIPSHGN.load_from_checkpoint(checkpoint)for checkpoint in checkpoints]
    for model in models:
        model.eval()
        model.setup_prediction_mode()

    args = BaseArgs(domain=os.path.join(base_directory, domain_pddl), 
        domains=None,
        problems=[os.path.join(base_directory, problem) for problem in problem_pddls],
        debug=True)

    problems = args.get_strips_problems()

    h_values = []
    for idx, problem in enumerate(problems):
        print(problem.name)
        hypergraph = DeleteRelaxationHypergraphView(problem)

        state_value_pairs, _ = get_optimal_actions_using_py(problem, mode=mode)
        target=None
        
        hs = []
        optimal_vals = []
        for pair in state_value_pairs:
            optimal_vals.append(pair[2])
            assert target==None or target==pair[1]
            target=pair[1]
        hs.append(optimal_vals)

        for model in models:
            hparams = model.hparams

            wf = BaseFeatureMappingWorkflow(
                global_feature_mapper_cls=hparams.global_feature_mapper_cls,
                node_feature_mapper_cls=hparams.node_feature_mapper_cls,
                hyperedge_feature_mapper_cls=hparams.hyperedge_feature_mapper_cls,
                max_receivers=model.hparams.receiver_k,
                max_senders=model.hparams.sender_k,
            )

            # def state_to_input_h_tup(state) -> HypergraphsTuple:
            #     return wf._get_input_hypergraphs_tuple(state, hypergraph)

            h_vals = []
            for pair in state_value_pairs:
                input_h_tuple = wf._get_input_hypergraphs_tuple(pair[0], hypergraph, pair[1])
                output_h_tuple = model(input_h_tuple) # , num_steps
                assert len(output_h_tuple) == 1
                heuristic_val = output_h_tuple[0].globals.item()
                h_vals.append(heuristic_val)
            hs.append(h_vals)

        h_values.append(hs)

    return h_values

def compare_heuristics_1(base_directory, domain_pddl, problem_pddls, checkpoints, mode={'mode':'eval'}):
    models = [STRIPSHGN.load_from_checkpoint(checkpoint)for checkpoint in checkpoints]  # timer?
    for model in models:
        model.eval()
        model.setup_prediction_mode()

    args = BaseArgs(domain=os.path.join(base_directory, domain_pddl), 
        domains=None,
        problems=[os.path.join(base_directory, problem) for problem in problem_pddls],
        debug=True)

    problems = args.get_strips_problems()

    h_values = []
    for problem in problems:
        print(problem.name)
        hypergraph = DeleteRelaxationHypergraphView(problem)

        heuristics = []
        for model in models:
            hparams = model.hparams

            wf = BaseFeatureMappingWorkflow(
                global_feature_mapper_cls=hparams.global_feature_mapper_cls,
                node_feature_mapper_cls=hparams.node_feature_mapper_cls,
                hyperedge_feature_mapper_cls=hparams.hyperedge_feature_mapper_cls,
                max_receivers=model.hparams.receiver_k,
                max_senders=model.hparams.sender_k,
            )

            def state_to_input_h_tup(state) -> HypergraphsTuple:
                return wf._get_input_hypergraphs_tuple(state, hypergraph)

            heuristics.append(STRIPSHGNHeuristic(model, state_to_input_h_tup, PlannerForEvaluation.pyperplan))

        state_value_pairs, _ = get_optimal_actions_using_py(problem, mode=mode)
        hs = [[pair[2]] + [heuristic(searchspace.make_root_node(pair[0])) for heuristic in heuristics] for pair in state_value_pairs]
        h_values.append(list(zip(*hs)))

    return h_values

def compare_heuristics_2(base_directory, domain_pddl, problem_pddls, checkpoints):

    args = BaseArgs(domain=os.path.join(base_directory, domain_pddl), 
        domains=None,
        problems=[os.path.join(base_directory, problem) for problem in problem_pddls],
        debug=True)

    problems = args.get_strips_problems()
    
    # only test on one problem 
    for problem in problems:
        print(problem.name)
        heuristic_models = [model_to_heuristics(checkpoint, problem) for checkpoint in checkpoints]
        compare_list, _ = get_optimal_actions_using_py(problem=problem, heuristic_models=heuristic_models)
        return compare_list

    return None

if __name__ == "__main__":
    arg = sys.argv[1]
    print(arg)
    if arg=='1':
        base_directory="../benchmarks/gripper"
        domain_pddl="domain.pddl"
        heuristics=["gripper_ori_90", "gripper_all_90", "gripper_all_180"]
        problem_pddls=["problems/gripper-n"+str(i)+".pddl" for i in range(1, 10)] # 4, 21
        checkpoints = [os.path.join("../results/", path, "model-best.ckpt") for path in heuristics] 

        h_values = compare_heuristics_1(base_directory, domain_pddl, problem_pddls, checkpoints)
        h_concat = functools.reduce(lambda a, b: [a[i]+b[i] for i in range(len(a))], h_values)

        plt.figure(figsize=(20,16))
        # plt.ylim(0,100)
        # plt.xlim(500, 1200)
        for idx, h in enumerate(["optimal"]+heuristics):
        #     if idx!=1:
            plt.plot(range(len(h_concat[idx])), h_concat[idx], label=h)
        plt.legend()
        plt.savefig('gripper.svg')
        # plt.savefig('ferry.png')

    if arg=='2':
        base_directory="../benchmarks/gripper"
        domain_pddl="domain.pddl"
        heuristics=["gripper_ori_90", "gripper_all_90", "gripper_all_180"]
        problem_pddls=["problems/gripper-n9.pddl"] # 4, 21
        checkpoints = [os.path.join("../results/", path, "model-best.ckpt") for path in heuristics] 

        print(compare_heuristics_2(base_directory, domain_pddl, problem_pddls, checkpoints))