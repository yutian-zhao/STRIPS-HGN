from os.path import join

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

base_directory="../benchmarks/gripper"
domain_pddl="domain.pddl"
problem_pddls=["problems/gripper-n"+str(i)+".pddl" for i in range(1, 10)] # 4, 21
checkpoints = [join("../results/", path, "model-best.ckpt") for path in ["gripper_all_180"]] # "gripper_ori_90", "gripper_all_90"

def compare_heuristics_1(base_directory, domain_pddl, problem_pddls, checkpoints, ):
    models = [STRIPSHGN.load_from_checkpoint(checkpoint)for checkpoint in checkpoints]
    for model in models:
        model.eval()
        model.setup_prediction_mode()

    args = BaseArgs(domain=join(base_directory, domain_pddl), 
        domains=None,
        problems=[join(base_directory, problem) for problem in problem_pddls],
        debug=True)
    # args.domain = join(base_directory, domain_pddl)
    # args.domains = [join(base_directory, domain_pddl)]
    # args.problems = [join(base_directory, problem) for problem in problem_pddls]
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

        optimal_plan, _ = get_optimal_actions_using_py(problem)

        current_state = problem.initial_state
        # trajectory: List[StateValuePair] = [
        #     StateValuePair(current_state, len(optimal_plan))
        # ]

        name_to_action: Dict[str, STRIPSAction] = {
            action.name: action for action in problem.actions
        }

        parent = searchspace.make_root_node(current_state)
        
        hs = [[len(optimal_plan)] + [heuristic(parent) for heuristic in heuristics]]

        for idx, action_name in enumerate(optimal_plan):
            # Apply action in the current state
            action = name_to_action[action_name.name]
            current_state = action.apply(current_state)
            child = searchspace.make_child_node(parent, action, current_state)

            # Create new state-value pair
            remaining_plan_length = len(optimal_plan) - (idx + 1)
            hs.append([remaining_plan_length] + [heuristic(child) for heuristic in heuristics])

            parent = child

        assert problem.is_goal_state(current_state)
        assert len(hs) == len(optimal_plan) + 1

        h_values.append(list(zip(*hs)))

    return h_values

# print(compare_heuristics_1(base_directory, domain_pddl, problem_pddls, checkpoints))