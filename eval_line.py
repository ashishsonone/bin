import sys
import re
if len(sys.argv) < 2:
    print('Usage')
    print("\tpython eval_line.py '- 1.7 (groc 3 apr) - 3 (?? furniture) - 21 (rent)'")
    sys.exit(0)
expr = sys.argv[1]
print(expr)

expr = re.sub('\(.*?\)', '', expr)
print(expr)

v = eval(expr)
print(v)
