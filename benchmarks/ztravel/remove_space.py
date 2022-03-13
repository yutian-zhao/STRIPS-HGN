import os
import re


for root, dirs, files in os.walk("."):
    for dir in dirs:
        if " " in dir:
            os.rename(os.path.join(root, dir), os.path.join(root, dir.replace(" ", "")))
            
    for file in files:
        print(file)
        if " " in file:
            os.rename(os.path.join(root, file), os.path.join(root, file.replace(" ", "")))

pattern = r"\(define\s\(problem\s(.*)\)"
for root, dirs, files in os.walk("."):
    for file in files:
        if file.endswith('.pddl') and file != "slaney_gen.pddl" and file != 'domain.pddl':
            lines = None
            with open(os.path.join(root, file), 'r') as f:
                lines = f.readlines()
            with open(os.path.join(root, file), 'w') as f:
                for l in lines:
                    match = re.findall(pattern, l)
                    if len(match) >0:
                        l = l.replace(match[0], file[:-5])
                    f.write(l)