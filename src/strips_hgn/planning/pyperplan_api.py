import logging
from abc import ABC, abstractmethod
from enum import Enum
from typing import Any, Callable, List, Tuple, Optional

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
from pyperplan.search import SearchMetrics, \
    astar_search, breadth_first_search, novelty_search, \
    greedy_best_first_search, weighted_astar_search, monte_carlo_tree_search
from pyperplan.task import Task

from strips_hgn.utils import Number


_log = logging.getLogger(__name__)

# Mapping of heuristic name to the type
HEURISTIC_STR_TO_CLASS = {
    "h-max": hMaxHeuristic,
    "h-add": hAddHeuristic,
    "lm-cut": LmCutHeuristic,
    "h-ff": hFFHeuristic,
    "blind": BlindHeuristic,
}

# Only support A*
SEARCH_ALGO_STR_TO_FUNC = {
    "a-star": astar_search,
    "weighted-a-star": weighted_astar_search,
    "gbfs": greedy_best_first_search,
    "mcts": monte_carlo_tree_search
}

"""
Several components in this module are lifted from 
https://github.com/aibasel/pyperplan/blob/master/src/pyperplan.py
"""


class PyperplanSupported(ABC):
    """ Any object supported by Pyperplan """

    @abstractmethod
    def to_pyperplan(self, task: Task):
        raise NotImplementedError


class PyperplanSupportedEnum(Enum):
    """ Any enum supported by Pyperplan """

    @abstractmethod
    def to_pyperplan(self, task: Task):
        raise NotImplementedError


def _parse(domain_file: str, problem_file: str) -> Tuple[Domain, Problem]:
    """ Parse the domain and problem """
    # Parsing
    parser = Parser(domain_file, problem_file)
    _log.debug("Parsing Domain {0}".format(domain_file))
    domain = parser.parse_domain()
    _log.debug("Parsing Problem {0}".format(problem_file))
    problem = parser.parse_problem(domain)
    _log.debug("{0} Predicates parsed".format(len(domain.predicates)))
    _log.debug("{0} Actions parsed".format(len(domain.actions)))
    _log.debug("{0} Objects parsed".format(len(problem.objects)))
    _log.debug("{0} Constants parsed".format(len(domain.constants)))
    return domain, problem


def _ground(problem: Problem) -> Task:
    """ Ground the problem"""
    _log.debug("Grounding start: {0}".format(problem.name))
    task = grounding.ground(problem)
    _log.debug("Grounding end: {0}".format(problem.name))
    _log.debug("{0} Variables created".format(len(task.facts)))
    _log.debug("{0} Operators created".format(len(task.operators)))
    return task


def get_domain_and_task(
    domain_file: str, problem_file: str
) -> Tuple[Domain, Task]:
    """
    Get the domain and Pyperplan task for a domain and problem PDDL

    Parameters
    ----------
    domain_file: filepath to domain PDDL
    problem_file: filepath to problem PDDL

    Returns
    -------
    A tuple containing the Pyperplan Domain and Task
    """
    domain, problem = _parse(domain_file, problem_file)
    task = _ground(problem)
    return domain, task


def find_solution(
    task: Task,
    heuristic: Heuristic,
    search_algo: Callable[
        [Task, Heuristic, Any], Tuple[List[str], SearchMetrics]
    ],
    max_search_time: Number,
    mode=None,
    heuristic_models = None, # test : Optional[List[STRIPSHGNHeuristic]]
    **kwargs,
) -> Tuple[List[str], SearchMetrics]:
    """
    Runs a search algorithm to find a solution for a task

    Parameters
    ----------
    task: the Pyperplan task
    heuristic: the Pyperplan heuristic to use for the search
    search_algo: the Pyperplan search algorithm to use
    max_search_time: maximum search time for the task

    Returns
    -------
    A tuple containing the solution to the task and the search metrics
    """
    # Only support A* search for now
    if search_algo == astar_search or search_algo == greedy_best_first_search or search_algo == weighted_astar_search:
        solution, metrics = search_algo(
            task, heuristic, max_search_time=max_search_time, mode=mode, heuristic_models=heuristic_models, **kwargs,
        )
        _log.info(f"Search took ~{round(metrics.search_time, 5)}s")
        return solution, metrics
    elif search_algo == breadth_first_search or search_algo == novelty_search:
        return  search_algo(task, max_search_time=max_search_time, mode=mode, **kwargs,), None
    elif search_algo == monte_carlo_tree_search:
        solution, metrics = search_algo(task, heuristic, max_search_time=max_search_time, mode=mode, **kwargs,)
        _log.info(f"Search took ~{round(metrics.search_time, 5)}s")
        return solution, metrics
    else:
        raise RuntimeError(f"Unsupported search algorithm {search_algo}")

    


def get_optimal_actions_using_py(problem, mode=None, heuristic_models=None): # : Optional[List[STRIPSHGNHeuristic]]
    _, task = get_domain_and_task(
        problem.domain_pddl, problem.problem_pddl
    )
    # _log.info(f"Running a star + h max with pyperplan")

    if mode and mode.get('search')=='bfs':
        search_algo = breadth_first_search
    elif mode and mode.get('search')=='novelty':
        search_algo = novelty_search
    else:
        # astar by default
        search_algo = astar_search

    if mode and mode.get('mode')=='eval':
        heuristic = HEURISTIC_STR_TO_CLASS[mode.get('heuristic', "lm-cut")](task)
    else:
        # astar by default
        heuristic = HEURISTIC_STR_TO_CLASS[mode.get('heuristic', "h-max")](task)

    sol, metrics = find_solution(
        task=task,
        heuristic=heuristic, # hMaxHeuristic(task), # hAddHeuristic(task), # default hmax
        search_algo=search_algo, # breadth_first_search, # astar_search,
        max_search_time=10*60,  # 5 s time out for each problem
        mode=mode,
        heuristic_models = heuristic_models, # None # test
    )
    return sol, metrics