import sys
import os

if len(sys.argv) < 3:
    print('Usage')
    print("\tpython adb_pull.py <android-src> <regex-pattern> <pc-dest>")
    print("\tpython adb_pull.py '/sdcard/' '^x.*json' /home/ashish/Downloads")
    print("\tpython adb_pull.py '/sdcard/DCIM/Screenshots/' 'Screenshot_2018-06-05-.*.png' ~/ssd/Downloads/sc/")
    sys.exit(0)

src = sys.argv[1]
pattern = sys.argv[2]
dest = sys.argv[3]

print(src, ' | ', pattern, ' | ', dest)

if src[-1] != '/':
  src = src + '/'

command = "adb shell \"ls '{}'\" | grep -e '{}'".format(src, pattern)
print(command)
files = os.popen(command).read()
files = files.split('\n')

success = 0
for fname in files:
  fname = fname.strip()
  if not fname:
    continue

  command = "adb pull '{}{}' '{}'".format(src, fname, dest)
  print(command)
  r = os.popen(command).read()
  success += 1

print('Finished pulling {} files'.format(success))
