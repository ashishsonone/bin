import re
import sys

if len(sys.argv) < 2:
    print('Usage python asum <input>')
    sys.exit(0)

f = sys.argv[1]
lines = open(f).readlines()

total = 0
for lorg in lines:
    lorg = lorg.strip()
    l = re.sub('[^\\d\\.]','', lorg)
    if l:
        total += int(float(l))
        print('{} \t\t + {} = {}'.format(lorg, l, total))
    elif l:
        print('{}'.format(lorg))

print('----------------')
print('total={}'.format(total))
