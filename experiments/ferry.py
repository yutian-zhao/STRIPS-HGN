from default_args import get_training_args, DomainAndProblemConfiguration
from train import train_wrapper


if __name__ == "__main__":
    _log.info(f'Starting experiments: {datetime.now().strftime("%m-%d-%H-%M-%S")}.')

    repeats = 3
    modes=[
        {'domain':'fry', 'mode':'train', 'search':'astar', 'all':False, 'novel':0, 'lifted':0, 'distance': 0, 'bound': 600, 'auto_bslr': False},
        {'domain':'fry', 'mode':'train', 'search':'astar', 'all':False, 'novel':2, 'lifted':0, 'distance': 0, 'bound': 600, 'auto_bslr': False},
        {'domain':'fry', 'mode':'train', 'search':'astar', 'all':False, 'novel':2, 'lifted':1, 'distance': 0, 'bound': 600, 'auto_bslr': False},
        {'domain':'fry', 'mode':'train', 'search':'astar', 'all':True, 'novel':0, 'lifted':0, 'distance': 0, 'bound': 600, 'auto_bslr': False},
        {'domain':'fry', 'mode':'train', 'search':'bfs', 'all':False, 'novel':2, 'lifted':0, 'distance': 0, 'bound': 600, 'auto_bslr': False},
        {'domain':'fry', 'mode':'train', 'search':'bfs', 'all':False, 'novel':2, 'lifted':1, 'distance': 0, 'bound': 600, 'auto_bslr': False},
        {'domain':'fry', 'mode':'train', 'search':'bfs', 'all':True, 'novel':0, 'lifted':0, 'distance': 0, 'bound': 600, 'auto_bslr': False},
        {'domain':'fry', 'mode':'train', 'search':'novelty', 'all':True, 'novel':2, 'lifted':0, 'distance': 0, 'bound': 600, 'auto_bslr': False},
        {'domain':'fry', 'mode':'train', 'search':'novelty', 'all':True, 'novel':2, 'lifted':1, 'distance': 0, 'bound': 600, 'auto_bslr': False},
    ]
    passes = {mode_to_str(mode): False for mode in modes}
    report = {}
    used_problems = set()
    # best_models = []

    train_problem_pddls = []
    for loc in range(2, 5):
        for car in range(1, 4):
            train_problem_pddls += ["-l{}-c{}".format(loc, car) +'/'+ p for p in os.listdir("../benchmarks/fry/"+"-l{}-c{}".format(loc, car))]
    for pddl in train_problem_pddls:
        used_problems.add(pddl)

    _CONFIGURATION = DomainAndProblemConfiguration(
        base_directory="../benchmarks/fry",
        domain_pddl="domain.pddl",
        # {3, 4, 5 blocks} x 10 problems = 30 problems
        problem_pddls=train_problem_pddls
    )

    for i in range(repeats):
        _log.info(f"Repeat: {i}.")

        valid_problem_pddls = []
        for loc in range(2, 11):
            for car in range(5, 21, 5):
                valid_problem_pddls += sorted(random.sample(["-l{}-c{}".format(loc, car) +'/'+ p for p in os.listdir("../benchmarks/fry/"+"-l{}-c{}".format(loc, car))], k=1))
        valid_problem_pddls = valid_problem_pddls[2::4]
        _log.info(f"Validation problems are: {valid_problem_pddls}.")
        for pddl in valid_problem_pddls:
            used_problems.add(pddl)

        for mode in modes:
            if not passes[mode_to_str(mode)]:
                # training phase
                _log.info(f"Training: {mode_to_str(mode)}")
                train_wrapper(
                    args=get_training_args(
                        configurations=[_CONFIGURATION],
                        # 10 minutes
                        max_training_time=15*60, #  
                        num_folds=2,
                        # batch_size=32,
                        # learning_rate=0.005,
                    ),
                    experiment_type=mode_to_str(mode),
                    mode=mode,
                )

                # validation phase
                for dirname in os.listdir("../results"):
                    if mode_to_str(mode) in dirname and not dirname.replace("train", "eval") in "_".join(os.listdir("../results")):
                        train_dirname = dirname
                        break
                        
                _VALID_CONFIGURATION = DomainAndProblemConfiguration(
                    base_directory="../benchmarks/fry",
                    domain_pddl="domain.pddl",
                    problem_pddls=valid_problem_pddls,
                    )

                _log.info("Validating: {}.".format(train_dirname.replace("train", "eval")))
                eval_wrapper(
                    args=get_eval_args(
                        configurations=[_VALID_CONFIGURATION],
                        max_search_time=10*60,
                        checkpoint= "../results/{}/model-best.ckpt".format(train_dirname),
                    ),
                    experiment_type=train_dirname.replace("train", "eval"),
                    mode={'mode':'eval'},
                )

                for dirname in os.listdir("../results"):
                    if train_dirname.replace("train", "eval") in dirname:
                        valid_dirname = dirname
                        break

                # parse json and save report
                total_count = len(valid_problem_pddls)
                solved_count = 0
                with open(os.path.join('../results', valid_dirname, "test_results.json"), 'r') as file:
                    res = json.load(file)
                    for name, result in res['results'].items():
                        if result['strips-hgn']['search_state']=='success':
                            solved_count+=1
                if solved_count/total_count >=0.8:
                    passes[mode_to_str(mode)] = True

                best_loss=float('inf')
                with open(os.path.join("../results", train_dirname, "strips_hgn.log"), 'r') as file:
                    lines = file.readlines()
                    for l in lines:
                        if '(best ' in l:
                            if best_loss > float(l[(l.find('(best ')+6): (l.find('(best ')+10)]):
                                best_loss = float(l[(l.find('(best ')+6): (l.find('(best ')+10)])

                report[train_dirname] = {'best_loss': best_loss, 'coverage': solved_count/total_count, 'pass': (solved_count/total_count)>=0.8}
                json.dump(
                    report,
                    open(os.path.join('../results', 'report.json'), "w"),
                    indent=2,
                )
                _log.info('Reporting {}: {}'.format(train_dirname, report[train_dirname]))
        
    # prepare test problems
    test_problem_pddls = []
    for loc in range(2, 11):
        for car in range(5, 21, 5):
            problem_set = set(["-l{}-c{}".format(loc, car) +'/'+ p for p in os.listdir("../benchmarks/fry/"+"-l{}-c{}".format(loc, car))])-used_problems 
            test_problem_pddls += sorted(random.sample(list(problem_set), k=1))

    for mode in modes:
        mode_name = mode_to_str(mode)
        best_model = None
        best_loss = float('inf')
        coverage = 0

        for model_name, metrics in report.items():
            if mode_name in model_name:
                if metrics['pass']:
                    best_model = model_name
                    break
                elif metrics['coverage'] > coverage:
                    best_model = model_name
                    coverage = metrics['coverage']
                    best_loss = metrics['best_loss']
                elif metrics['coverage'] == coverage and metrics['best_loss'] < best_loss:
                    best_model = model_name
                    best_loss = metrics['best_loss']
        _log.info(f"Testing: {best_model}.")
        # best_models.append(best_model)

        # test phase
        _TEST_CONFIGURATION = DomainAndProblemConfiguration(
            base_directory="../benchmarks/fry",
            domain_pddl="domain.pddl",
            problem_pddls=test_problem_pddls,
            )

        eval_wrapper(
            args=get_eval_args(
                configurations=[_TEST_CONFIGURATION],
                max_search_time=10*60,
                checkpoint= "../results/{}/model-best.ckpt".format(best_model),
            ),
            experiment_type=best_model.replace('train', 'eval'),
            mode={'mode':'eval'},
        )

    _log.info("EXPERIEMENTS COMPLETE!")