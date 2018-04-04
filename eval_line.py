import sys
import re
expr = sys.argv[1]
print(expr)

expr = re.sub('\(.*?\)', '', expr)
print(expr)

v = eval(expr)
print(v)
