from os.path import join

from pyperplan.search import searchspace
# from strips_hgn.training_data import _generate_optimal_state_value_pairs_for_problem
from strips_hgn.planning.pyperplan_api import get_optimal_actions_using_py
from strips_hgn.utils.args.base_args import BaseArgs

# from hypergraph_nets.hypergraphs import HypergraphsTuple
# from strips_hgn.hypergraph.delete_relaxation import (
#     DeleteRelaxationHypergraphView,
# )
# from strips_hgn.models.heuristic import STRIPSHGNHeuristic
# from strips_hgn.models.strips_hgn import STRIPSHGN
from strips_hgn.planning import (
    Heuristic,
    PlannerForEvaluation,
    SearchAlgorithm,
    STRIPSProblem,
)
# from strips_hgn.workflows.base_workflow import BaseFeatureMappingWorkflow

base_directory="../benchmarks/blocks-slaney"
domain_pddl="domain.pddl"
problem_pddls=["blocks5/task10.pddl"]
args = BaseArgs(domain=join(base_directory, domain_pddl), 
        domains=None,
        problems=[join(base_directory, problem) for problem in problem_pddls],
        debug=True)
# args.domain = join(base_directory, domain_pddl)
# args.domains = [join(base_directory, domain_pddl)]
# args.problems = [join(base_directory, problem) for problem in problem_pddls]
problems = args.get_strips_problems()
for problem in problems:
    plans, _ = get_optimal_actions_using_py(problem, use_novelty=True)
    print(plans)


"""
[[frozenset({'(on b1 b2)', '(clear b1)', '(on b2 b3)', '(handempty)', '(on-table b3)'}), inf], [frozenset({'(holding b1)', '(on-table b3)', '(on b2 b3)', '(clear b2)'}), 1], [frozenset({'(on-table b3)', '(clear b2)', '(on-table b1)', '(clear b1)', '(on b2 b3)', '(handempty)'}), 1], [frozenset({'(clear b3)', '(on-table b3)', '(holding b2)', '(clear b1)', '(on-table b1)'}), 1], [frozenset({'(clear b3)', '(on-table b3)', '(handempty)', '(clear b2)', '(on-table b2)', '(clear b1)', '(on-table b1)'}), 1], [frozenset({'(clear b3)', '(on-table b3)', '(handempty)', '(clear b2)', '(on b2 b1)', '(on-table b1)'}), 1], [frozenset({'(clear b2)', '(on-table b2)', '(holding b3)', '(clear b1)', '(on-table b1)'}), 1], [frozenset({'(clear b3)', '(on-table b3)', '(holding b1)', '(clear b2)', '(on-table b2)'}), 2], [frozenset({'(on b2 b1)', '(holding b3)', '(clear b2)', '(on-table b1)'}), 2], [frozenset({'(clear b3)', '(handempty)', '(on-table b2)', '(clear b1)', '(on b3 b2)', '(on-table b1)'}), 1], [frozenset({'(clear b3)', '(handempty)', '(clear b2)', '(on b3 b1)', '(on-table b2)', '(on-table b1)'}), 1], [frozenset({'(clear b3)', '(on-table b3)', '(on-table b2)', '(clear b1)', '(on b1 b2)', '(handempty)'}), 2]]
"""