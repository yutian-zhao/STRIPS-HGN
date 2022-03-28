import logging
import os
import re
import pandas as pd
import numpy as np
import json
from scipy.stats import rankdata

def extract_metrics(res, metric, problem_pddls):
    metrics = []
    problem_pddls = [prob.split('/')[-1][:-5] for prob in problem_pddls]
    for problem in problem_pddls:
    # for problem in sorted(res["results"].keys(), key=lambda s: float(''.join((re.findall(r"fry-l(.*)-c(.*)", s)[0])).replace("-", "."))):
      if problem in res["results"].keys() and res["results"][problem]["strips-hgn"]["search_state"]=='success':
          metrics.append(float(res["results"][problem]["strips-hgn"][metric]))
      else:
          metrics.append(None)
    return metrics

# experiment_name = 'fry'
# base_directory="../benchmarks/fry/"
# domain_pddl="domain.pddl"
# problem_pddls=[
#     "-l2-c5/fry-l2-c5-9992.pddl",
#     "-l2-c10/fry-l2-c10-4040.pddl",
#     "-l2-c15/fry-l2-c15-4208.pddl",
#     "-l2-c20/fry-l2-c20-4409.pddl",
#     "-l3-c5/fry-l3-c5-5269.pddl",
#     "-l3-c10/fry-l3-c10-3086.pddl",
#     "-l3-c15/fry-l3-c15-1124.pddl",
#     "-l3-c20/fry-l3-c20-6203.pddl",
#     "-l4-c5/fry-l4-c5-1587.pddl",
#     "-l4-c10/fry-l4-c10-7208.pddl",
#     "-l4-c15/fry-l4-c15-9490.pddl",
#     "-l4-c20/fry-l4-c20-9063.pddl",
#     "-l5-c5/fry-l5-c5-8027.pddl",
#     "-l5-c10/fry-l5-c10-6602.pddl",
#     "-l5-c15/fry-l5-c15-1485.pddl",
#     "-l5-c20/fry-l5-c20-7627.pddl",
#     "-l6-c5/fry-l6-c5-8468.pddl",
#     "-l6-c10/fry-l6-c10-5212.pddl",
#     "-l6-c15/fry-l6-c15-4767.pddl",
#     "-l6-c20/fry-l6-c20-2836.pddl",
#     "-l7-c5/fry-l7-c5-3098.pddl",
#     "-l7-c10/fry-l7-c10-3174.pddl",
#     "-l7-c15/fry-l7-c15-3985.pddl",
#     "-l7-c20/fry-l7-c20-7044.pddl",
#     "-l8-c5/fry-l8-c5-4184.pddl",
#     "-l8-c10/fry-l8-c10-1866.pddl",
#     "-l8-c15/fry-l8-c15-9844.pddl",
#     "-l8-c20/fry-l8-c20-9531.pddl",
#     "-l9-c5/fry-l9-c5-6157.pddl",
#     "-l9-c10/fry-l9-c10-7730.pddl",
#     "-l9-c15/fry-l9-c15-6034.pddl",
#     "-l9-c20/fry-l9-c20-4254.pddl",
#     "-l10-c5/fry-l10-c5-9424.pddl",
#     "-l10-c10/fry-l10-c10-4852.pddl",
#     "-l10-c15/fry-l10-c15-9627.pddl",
#     "-l10-c20/fry-l10-c20-2036.pddl"
#   ]

# experiment_name = 'blcoksworld-6-gbfs'
# base_directory="../benchmarks/blocksworld/"
# domain_pddl="domain.pddl"
# problem_pddls = [
#     "6/blocksworld6-2050.pddl",
#     "6/blocksworld6-3519.pddl",
#     "6/blocksworld6-4480.pddl",
#     "6/blocksworld6-5890.pddl",
#     "6/blocksworld6-6177.pddl",
#     "6/blocksworld6-7497.pddl",
#     "6/blocksworld6-8104.pddl",
#     "6/blocksworld6-8853.pddl",
#     "6/blocksworld6-9199.pddl",
#     "6/blocksworld6-9926.pddl",
#     "7/blocksworld7-1197.pddl",
#     "7/blocksworld7-1611.pddl",
#     "7/blocksworld7-3969.pddl",
#     "7/blocksworld7-4115.pddl",
#     "7/blocksworld7-5171.pddl",
#     "7/blocksworld7-5261.pddl",
#     "7/blocksworld7-6753.pddl",
#     "7/blocksworld7-8688.pddl",
#     "7/blocksworld7-8712.pddl",
#     "7/blocksworld7-8979.pddl",
#     "8/blocksworld8-1161.pddl",
#     "8/blocksworld8-3862.pddl",
#     "8/blocksworld8-4362.pddl",
#     "8/blocksworld8-5535.pddl",
#     "8/blocksworld8-6221.pddl",
#     "8/blocksworld8-6305.pddl",
#     "8/blocksworld8-6321.pddl",
#     "8/blocksworld8-7549.pddl",
#     "8/blocksworld8-7844.pddl",
#     "8/blocksworld8-9225.pddl",
#     "9/blocksworld9-1039.pddl",
#     "9/blocksworld9-4369.pddl",
#     "9/blocksworld9-5085.pddl",
#     "9/blocksworld9-5791.pddl",
#     "9/blocksworld9-5988.pddl",
#     "9/blocksworld9-7298.pddl",
#     "9/blocksworld9-7894.pddl",
#     "9/blocksworld9-8000.pddl",
#     "9/blocksworld9-8972.pddl",
#     "9/blocksworld9-9629.pddl",
#     "10/blocksworld10-2196.pddl",
#     "10/blocksworld10-2596.pddl",
#     "10/blocksworld10-3208.pddl",
#     "10/blocksworld10-3409.pddl",
#     "10/blocksworld10-3507.pddl",
#     "10/blocksworld10-6221.pddl",
#     "10/blocksworld10-6323.pddl",
#     "10/blocksworld10-6703.pddl",
#     "10/blocksworld10-7281.pddl",
#     "10/blocksworld10-8049.pddl"
#   ]

# experiment_name = 'mbw'
# base_directory="../benchmarks/mbw/"
# domain_pddl="matching-bw-typed.pddl"
# problem_pddls = [
#     "5/mbw5-5610.pddl",
#     "5/mbw5-6378.pddl",
#     "5/mbw5-6394.pddl",
#     "5/mbw5-6729.pddl",
#     "5/mbw5-7541.pddl",
#     "5/mbw5-8058.pddl",
#     "5/mbw5-8648.pddl",
#     "5/mbw5-8758.pddl",
#     "5/mbw5-9632.pddl",
#     "5/mbw5-9668.pddl",
#     "6/mbw6-2034.pddl",
#     "6/mbw6-2465.pddl",
#     "6/mbw6-2469.pddl",
#     "6/mbw6-2471.pddl",
#     "6/mbw6-3142.pddl",
#     "6/mbw6-4104.pddl",
#     "6/mbw6-5675.pddl",
#     "6/mbw6-7806.pddl",
#     "6/mbw6-8124.pddl",
#     "6/mbw6-9163.pddl",
#     "7/mbw7-2446.pddl",
#     "7/mbw7-2641.pddl",
#     "7/mbw7-2918.pddl",
#     "7/mbw7-4031.pddl",
#     "7/mbw7-5526.pddl",
#     "7/mbw7-5532.pddl",
#     "7/mbw7-7060.pddl",
#     "7/mbw7-9416.pddl",
#     "7/mbw7-9473.pddl",
#     "7/mbw7-9989.pddl",
#     "8/mbw8-2229.pddl",
#     "8/mbw8-2650.pddl",
#     "8/mbw8-3387.pddl",
#     "8/mbw8-4014.pddl",
#     "8/mbw8-4103.pddl",
#     "8/mbw8-5096.pddl",
#     "8/mbw8-6303.pddl",
#     "8/mbw8-8912.pddl",
#     "8/mbw8-9183.pddl",
#     "8/mbw8-9968.pddl"
#   ]

# experiment_name = 'gripper'
# base_directory="../benchmarks/gripper/"
# domain_pddl="domain.pddl"
# problem_pddls = [
#     "problems/gripper-7.pddl",
#     "problems/gripper-8.pddl",
#     "problems/gripper-9.pddl",
#     "problems/gripper-11.pddl",
#     "problems/gripper-12.pddl",
#     "problems/gripper-13.pddl",
#     "problems/gripper-15.pddl",
#     "problems/gripper-16.pddl",
#     "problems/gripper-17.pddl",
#     "problems/gripper-19.pddl",
#     "problems/gripper-20.pddl",
#     "problems/gripper-21.pddl",
#     "problems/gripper-23.pddl",
#     "problems/gripper-24.pddl",
#     "problems/gripper-25.pddl"
#   ]

# experiment_name = 'npuzzle'
# base_directory="../benchmarks/npuzzle/"
# domain_pddl="n-puzzle-typed.pddl"
# problem_pddls = [
#     "3/npuzzle3-1464.pddl",
#     "3/npuzzle3-1624.pddl",
#     "3/npuzzle3-1866.pddl",
#     "3/npuzzle3-1999.pddl",
#     "3/npuzzle3-2140.pddl",
#     "3/npuzzle3-2246.pddl",
#     "3/npuzzle3-2405.pddl",
#     "3/npuzzle3-2463.pddl",
#     "3/npuzzle3-2512.pddl",
#     "3/npuzzle3-2575.pddl",
#     "3/npuzzle3-2587.pddl",
#     "3/npuzzle3-2742.pddl",
#     "3/npuzzle3-2838.pddl",
#     "3/npuzzle3-3034.pddl",
#     "3/npuzzle3-3102.pddl",
#     "3/npuzzle3-3136.pddl",
#     "3/npuzzle3-3179.pddl",
#     "3/npuzzle3-3486.pddl",
#     "3/npuzzle3-3669.pddl",
#     "3/npuzzle3-3880.pddl",
#     "3/npuzzle3-3942.pddl",
#     "3/npuzzle3-4182.pddl",
#     "3/npuzzle3-4267.pddl",
#     "3/npuzzle3-4459.pddl",
#     "3/npuzzle3-4872.pddl",
#     "3/npuzzle3-5104.pddl",
#     "3/npuzzle3-5310.pddl",
#     "3/npuzzle3-5568.pddl",
#     "3/npuzzle3-5618.pddl",
#     "3/npuzzle3-5647.pddl",
#     "3/npuzzle3-5689.pddl",
#     "3/npuzzle3-5911.pddl",
#     "3/npuzzle3-6309.pddl",
#     "3/npuzzle3-6704.pddl",
#     "3/npuzzle3-6851.pddl",
#     "3/npuzzle3-6864.pddl",
#     "3/npuzzle3-7157.pddl",
#     "3/npuzzle3-7567.pddl",
#     "3/npuzzle3-7676.pddl",
#     "3/npuzzle3-7784.pddl",
#     "3/npuzzle3-7982.pddl",
#     "3/npuzzle3-8779.pddl",
#     "3/npuzzle3-8823.pddl",
#     "3/npuzzle3-8872.pddl",
#     "3/npuzzle3-8885.pddl",
#     "3/npuzzle3-8905.pddl",
#     "3/npuzzle3-9619.pddl",
#     "3/npuzzle3-9664.pddl",
#     "3/npuzzle3-9700.pddl",
#     "3/npuzzle3-9833.pddl"
#   ]

# experiment_name = 'hanoi'
# base_directory="../benchmarks/hanoi/"
# domain_pddl="n-puzzle-typed.pddl"
# problem_pddls = [
#     "-n6/hanoi-n6-9645.pddl",
#     "-n7/hanoi-n7-8357.pddl",
#     "-n8/hanoi-n8-9389.pddl",
#     "-n9/hanoi-n9-6420.pddl",
#     "-n10/hanoi-n10-8825.pddl",
#     "-n11/hanoi-n11-9286.pddl",
#     "-n12/hanoi-n12-9941.pddl",
#     "-n13/hanoi-n13-5588.pddl",
#     "-n14/hanoi-n14-9905.pddl",
#     "-n15/hanoi-n15-6661.pddl"
#   ]

# experiment_name = 'ztravel'
# base_directory="../benchmarks/ztravel/"
# domain_pddl="domain.pddl"
# problem_pddls = [
#     "223/ztravel223-2660.pddl",
#     "224/ztravel224-7079.pddl",
#     "225/ztravel225-1424.pddl",
#     "226/ztravel226-8511.pddl",
#     "227/ztravel227-6261.pddl",
#     "233/ztravel233-4906.pddl",
#     "234/ztravel234-8446.pddl",
#     "235/ztravel235-3285.pddl",
#     "236/ztravel236-7361.pddl",
#     "237/ztravel237-7938.pddl",
#     "243/ztravel243-6968.pddl",
#     "244/ztravel244-7537.pddl",
#     "245/ztravel245-5778.pddl",
#     "246/ztravel246-1310.pddl",
#     "247/ztravel247-3579.pddl",
#     "253/ztravel253-7169.pddl",
#     "254/ztravel254-6330.pddl",
#     "255/ztravel255-8530.pddl",
#     "256/ztravel256-5265.pddl",
#     "257/ztravel257-9920.pddl",
#     "323/ztravel323-9823.pddl",
#     "324/ztravel324-5857.pddl",
#     "325/ztravel325-8939.pddl",
#     "326/ztravel326-8272.pddl",
#     "327/ztravel327-6129.pddl",
#     "333/ztravel333-4907.pddl",
#     "334/ztravel334-3274.pddl",
#     "335/ztravel335-8588.pddl",
#     "336/ztravel336-2634.pddl",
#     "337/ztravel337-2313.pddl",
#     "343/ztravel343-2970.pddl",
#     "344/ztravel344-8959.pddl",
#     "345/ztravel345-2620.pddl",
#     "346/ztravel346-5005.pddl",
#     "347/ztravel347-6744.pddl",
#     "353/ztravel353-5246.pddl",
#     "354/ztravel354-2889.pddl",
#     "355/ztravel355-3454.pddl",
#     "356/ztravel356-7552.pddl",
#     "357/ztravel357-8292.pddl",
#     "423/ztravel423-4168.pddl",
#     "424/ztravel424-2099.pddl",
#     "425/ztravel425-2212.pddl",
#     "426/ztravel426-5549.pddl",
#     "427/ztravel427-8446.pddl",
#     "433/ztravel433-1402.pddl",
#     "434/ztravel434-6277.pddl",
#     "435/ztravel435-8607.pddl",
#     "436/ztravel436-9840.pddl",
#     "437/ztravel437-7844.pddl",
#     "443/ztravel443-4418.pddl",
#     "444/ztravel444-4312.pddl",
#     "445/ztravel445-5321.pddl",
#     "446/ztravel446-7461.pddl",
#     "447/ztravel447-2095.pddl",
#     "453/ztravel453-1759.pddl",
#     "454/ztravel454-9172.pddl",
#     "455/ztravel455-7226.pddl",
#     "456/ztravel456-1657.pddl",
#     "457/ztravel457-1345.pddl"
#   ]


experiment_name = 'sokoban-test'
base_directory="../benchmarks/sokoban/"
domain_pddl="typed-sokoban.pddl"
problem_pddls = [
    "-n5-b2-w3/sokoban-n5-b2-w3-1116.pddl",
    "-n5-b2-w3/sokoban-n5-b2-w3-5556.pddl",
    "-n5-b2-w3/sokoban-n5-b2-w3-6060.pddl",
    "-n5-b2-w3/sokoban-n5-b2-w3-7028.pddl",
    "-n5-b2-w3/sokoban-n5-b2-w3-8512.pddl",
    "-n5-b2-w3/sokoban-n5-b2-w3-9035.pddl",
    "-n5-b2-w4/sokoban-n5-b2-w4-2105.pddl",
    "-n5-b2-w4/sokoban-n5-b2-w4-3165.pddl",
    "-n5-b2-w4/sokoban-n5-b2-w4-3499.pddl",
    "-n5-b2-w4/sokoban-n5-b2-w4-5940.pddl",
    "-n5-b2-w4/sokoban-n5-b2-w4-6771.pddl",
    "-n5-b2-w4/sokoban-n5-b2-w4-7504.pddl",
    "-n5-b2-w5/sokoban-n5-b2-w5-3625.pddl",
    "-n5-b2-w5/sokoban-n5-b2-w5-4295.pddl",
    "-n5-b2-w5/sokoban-n5-b2-w5-5219.pddl",
    "-n5-b2-w5/sokoban-n5-b2-w5-6330.pddl",
    "-n5-b2-w5/sokoban-n5-b2-w5-7043.pddl",
    "-n5-b2-w5/sokoban-n5-b2-w5-7856.pddl",
    "-n7-b2-w3/sokoban-n7-b2-w3-1810.pddl",
    "-n7-b2-w3/sokoban-n7-b2-w3-2805.pddl",
    "-n7-b2-w3/sokoban-n7-b2-w3-3320.pddl",
    "-n7-b2-w3/sokoban-n7-b2-w3-4598.pddl",
    "-n7-b2-w3/sokoban-n7-b2-w3-5076.pddl",
    "-n7-b2-w3/sokoban-n7-b2-w3-7444.pddl",
    "-n7-b2-w4/sokoban-n7-b2-w4-1314.pddl",
    "-n7-b2-w4/sokoban-n7-b2-w4-1324.pddl",
    "-n7-b2-w4/sokoban-n7-b2-w4-1609.pddl",
    "-n7-b2-w4/sokoban-n7-b2-w4-2178.pddl",
    "-n7-b2-w4/sokoban-n7-b2-w4-3044.pddl",
    "-n7-b2-w4/sokoban-n7-b2-w4-9383.pddl",
    "-n7-b2-w5/sokoban-n7-b2-w5-1705.pddl",
    "-n7-b2-w5/sokoban-n7-b2-w5-1795.pddl",
    "-n7-b2-w5/sokoban-n7-b2-w5-2395.pddl",
    "-n7-b2-w5/sokoban-n7-b2-w5-3332.pddl",
    "-n7-b2-w5/sokoban-n7-b2-w5-3334.pddl",
    "-n7-b2-w5/sokoban-n7-b2-w5-7172.pddl",
    "-n8-b2-w3/sokoban-n8-b2-w3-1671.pddl",
    "-n8-b2-w3/sokoban-n8-b2-w3-3460.pddl",
    "-n8-b2-w3/sokoban-n8-b2-w3-4108.pddl",
    "-n8-b2-w3/sokoban-n8-b2-w3-4269.pddl",
    "-n8-b2-w3/sokoban-n8-b2-w3-7756.pddl",
    "-n8-b2-w3/sokoban-n8-b2-w3-9829.pddl",
    "-n8-b2-w4/sokoban-n8-b2-w4-2096.pddl",
    "-n8-b2-w4/sokoban-n8-b2-w4-2668.pddl",
    "-n8-b2-w4/sokoban-n8-b2-w4-3261.pddl",
    "-n8-b2-w4/sokoban-n8-b2-w4-4244.pddl",
    "-n8-b2-w4/sokoban-n8-b2-w4-5043.pddl",
    "-n8-b2-w4/sokoban-n8-b2-w4-5872.pddl",
    "-n8-b2-w5/sokoban-n8-b2-w5-2900.pddl",
    "-n8-b2-w5/sokoban-n8-b2-w5-3012.pddl",
    "-n8-b2-w5/sokoban-n8-b2-w5-4939.pddl",
    "-n8-b2-w5/sokoban-n8-b2-w5-8175.pddl",
    "-n8-b2-w5/sokoban-n8-b2-w5-8354.pddl",
    "-n8-b2-w5/sokoban-n8-b2-w5-9749.pddl"
  ]


json_results = []
result_names = []
results_path = "../results/{}/results".format(experiment_name)
for fp in sorted(os.listdir(results_path)):
    if os.path.exists(os.path.join(results_path, fp, "test_results.json")):
        with open(os.path.join(results_path, fp, "test_results.json"), 'r') as file:
            res = json.load(file)
            json_results.append(res)
            setting_name = fp.split('-')[0].replace('complement_unset_', '')
            setting_name = '_'.join(setting_name.split('_')[3:])
            result_names.append(setting_name)
assert len(result_names) == 9

# nodes_expanded_list = []
# for res in json_results:
#     nodes_expanded_list.append(extract_metrics(res, "nodes_expanded", problem_pddls))
# nodes_expanded_list = np.array(nodes_expanded_list).T
# index_name=[s.split("/")[1][:-5] for s in problem_pddls]

# nodes_expanded_df = pd.DataFrame(nodes_expanded_list, columns=result_names, index=index_name)
# nodes_expanded_df.to_csv('nodes_expanded_df.csv', mode='a', header=not os.path.exists('nodes_expanded_df.csv'), index_label='problem')

# nodes_expanded_list[nodes_expanded_list==None] = float('inf')
# ranked_nodes_expanded_list = rankdata(nodes_expanded_list, axis=1, method='min')
# ranked_nodes_expanded_df = pd.DataFrame(ranked_nodes_expanded_list, columns=result_names, index=index_name)
# ranked_nodes_expanded_df.to_csv('ranked_nodes_expanded_df.csv', mode='a', header=not os.path.exists('ranked_nodes_expanded_df.csv'), index_label='problem')

plan_length_list = []
for res in json_results:
    plan_length_list.append(extract_metrics(res, "plan_length", problem_pddls))
plan_length_list = np.array(plan_length_list).T
index_name=[s.split("/")[1][:-5] for s in problem_pddls]

plan_length_list[plan_length_list==-1] = None
plan_length_df = pd.DataFrame(plan_length_list, columns=result_names, index=index_name)
plan_length_df.to_csv('plan_length_df.csv', mode='a', header=not os.path.exists('plan_length_df.csv'), index_label='problem')

plan_length_list[plan_length_list==None] = float('inf')
ranked_plan_length_list = rankdata(plan_length_list, axis=1, method='min')
ranked_plan_length_df = pd.DataFrame(ranked_plan_length_list, columns=result_names, index=index_name)
ranked_plan_length_df.to_csv('ranked_plan_length_df.csv', mode='a', header=not os.path.exists('ranked_plan_length_df.csv'), index_label='problem')

# search_time_list = []
# for res in json_results:
#     search_time_list.append(extract_metrics(res, "search_time", problem_pddls))
# search_time_list = np.array(search_time_list).T
# index_name=[s.split("/")[1][:-5] for s in problem_pddls]

# search_time_df = pd.DataFrame(search_time_list, columns=result_names, index=index_name)
# search_time_df.to_csv('search_time_df.csv', mode='a', header=not os.path.exists('search_time_df.csv'),index_label='problem')

# search_time_list[search_time_list==None] = float('inf')
# ranked_search_time_list = rankdata(search_time_list, axis=1, method='min')
# ranked_search_time_df = pd.DataFrame(ranked_search_time_list, columns=result_names, index=index_name)
# ranked_search_time_df.to_csv('ranked_search_time_df.csv', mode='a', header=not os.path.exists('ranked_search_time_df.csv'), index_label='problem')
