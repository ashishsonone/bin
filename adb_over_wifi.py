import os
import re

def run(command):
  print('> {}'.format(command))
  x = os.popen(command).read()
  print(x)
  return x

run('adb usb')
run('sleep 3')
run('adb devices')
x = run('adb shell netcfg | grep wlan0')
ip = re.search('\d+\.\d+\.\d+\.\d+', x).group()

x = run('adb tcpip 5556')

run('sleep 3')

x = run('adb connect {}:5556'.format(ip))