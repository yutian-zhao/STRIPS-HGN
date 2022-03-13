import logging
from collections import defaultdict
from typing import Dict, List

from strips_hgn.planning import STRIPSProblem
from strips_hgn.training_data import StateValuePair, TrainingPair
from strips_hgn.utils.metrics import CountMetric, metrics_logger

from collections import Counter
import numpy as np

_log = logging.getLogger(__name__)


def merge_state_value_pairs_by_domain(
    problem_to_state_value_pairs: Dict[STRIPSProblem, List[StateValuePair]],
    remove_duplicates: bool = False,
    mode = None
) -> Dict[str, List[TrainingPair]]:
    """
    Generates a mapping of domain to corresponding TrainingPairs.
    The state-value pairs are merged by domain, and corresponding TrainingPair
    objects are created.

    The TrainingPair objects contain the problem, which we use to generate the
    hypergraph later on.

    Parameters
    ----------
    problem_to_state_value_pairs: mapping of STRIPSProblem to a list of
        state-value pairs
    remove_duplicates: whether to remove duplicate TrainingPairs, not
        implemented at the moment

    Returns
    -------
    Mapping of domain name to List[TrainingPair]
    """
    # Domain to training pairs. We determine a unique domain by its name
    domain_to_training_pairs = defaultdict(list)

    _log.debug("Start creating Training Pairs.")
    for problem, state_value_pairs in problem_to_state_value_pairs.items():
        # Create TrainingPair objects which hold the problem context
        training_pairs = [
            TrainingPair(problem, state_value_pair)
            for state_value_pair in state_value_pairs
        ]
        domain_to_training_pairs[problem.domain_name].extend(training_pairs)
    
    _log.debug("Start sampling Training Pairs.")
    # uniform sample
    for domain, training_pairs in domain_to_training_pairs.items():
        prob_cnt = defaultdict(lambda: Counter()) 
        probs = []
        num_prob_value = 0
        for t in training_pairs:                       
            prob_cnt[t.problem][t.value] += 1
        for prob in prob_cnt.keys():
            num_prob_value += len(prob_cnt[prob].keys())
        for t in training_pairs: 
            probs.append(1/(num_prob_value*prob_cnt[t.problem][t.value]))

        # n_value_min = min(cnt.values())
        # n_value = len(cnt.keys())
        # _log.info("The smallest set of a heuristic value has {} samples, there are {} different heuristic values.".format(n_value_min, n_value))
        
        if mode:
            data_amount = mode.get('bound', 300)
        else:
            data_amount = 300
        if len(training_pairs) > data_amount:
        #     if n_value*n_value_min <= 10000:
        #         n = n_value*n_value_min
        #     else:
        #         n = 10000
        # elif len(training_pairs) > 300:
            n = data_amount
        else:
            n = len(training_pairs)
        # n = n_value*n_value_min if len(training_pairs) > 300 and n_value*n_value_min > 300 else len(training_pairs)
        # print("/////////////////////////", n, len(training_pairs))
        domain_to_training_pairs[domain] = np.random.choice(training_pairs, size=n, replace=False, p=probs).tolist()
    
    if remove_duplicates:
        # TODO: figure out best way to implement this
        # Options: (option 2 is strongly preferred)
        #  1. Remove duplicates based on state and value only
        #  2. Remove duplicates based on hypergraph structure, state and value
        raise NotImplementedError

    # Metrics
    total_num_pairs = 0
    for domain, training_pairs in domain_to_training_pairs.items():
        metrics_logger.add_metric(
            CountMetric(
                "NumberofMergedTrainingPairs",
                len(training_pairs),
                context={"domain": domain},
            )
        )
        _log.debug(
            f"Merged {len(training_pairs)} training pairs for '{domain}'"
        )
        total_num_pairs += len(training_pairs)

    _log.info(f"Merged {total_num_pairs} training pairs in total")
    metrics_logger.add_metric(
        CountMetric("TotalNumberOfMergedTrainingPairs", total_num_pairs)
    )

    return domain_to_training_pairs
