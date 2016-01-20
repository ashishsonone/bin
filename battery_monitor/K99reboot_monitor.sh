#!/bin/bash
<<shutdown
put in 
    /etc/rc0.d (executed when shutdown)
    /etc/rc6.d (executed when reboot selected for turning off)

The scripts are all symbolic links whose targets are located in /etc/init.d/

The scripts are run in alphabetical order

Your script(or link name) should be before S90halt(for rc0.d) or S90reboot(rc6.d) 
because after 2 scripts(respec.), none of the remaining scripts will be executed.
These 2 contain actual 'shutdown' and 'reboot' commands
shutdown

date=$(/bin/date)
percentage=$(/usr/bin/acpi -V | /usr/bin/head -n 1 | /usr/bin/awk -F ',' '{print $2}')

echo "reboot =$1=" $date $percentage>> /home/ashish/Desktop/battery.txt

