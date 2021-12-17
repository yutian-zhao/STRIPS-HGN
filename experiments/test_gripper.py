from pyperplan.search import searchspace
# from strips_hgn.training_data import _generate_optimal_state_value_pairs_for_problem
from strips_hgn.planning.pyperplan_api import get_optimal_actions_using_py
from strips_hgn.utils.args.base_args import BaseArgs
from os.path import join
from strips_hgn.models.strips_hgn import STRIPSHGN


base_directory="../benchmarks/gripper",
domain_pddl="domain.pddl",
problem_pddls=["problems/gripper-n"+str(i)+".pddl" for i in range(4, 21)]
checkpoints = [join("../results/", path) for path in ["gripper_ori_90", "gripper_all_90","gripper_all_180"]]
models = [STRIPSHGN.load_from_checkpoint(checkpoint)for checkpoint in checkpoints]

args = BaseArgs()
args.domain = join(base_directory, domain_pddl)
args.problems = [join(base_directory, problem) for problem in problem_pddls]
problems = args.get_strips_problems()

for problem in problems:
    optimal_plan, _ = get_optimal_actions_using_py(problem)
    current_state = problem.initial_state
    root = searchspace.make_root_node(current_state)
    name_to_action: Dict[str, STRIPSAction] = {
        action.name: action for action in problem.actions
    }
    
    for idx, action_name in enumerate(optimal_plan):
        # Apply action in the current state
        action = name_to_action[action_name.name]
        current_state = action.apply(current_state)

        # Create new state-value pair
        remaining_plan_length = len(optimal_plan) - (idx + 1)
        trajectory.append(StateValuePair(current_state, remaining_plan_length))