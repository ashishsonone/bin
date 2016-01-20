#!/bin/bash
<<power
When you plug in/out the AC adapter, the scripts in /etc/pm/power.d
get called with an argument: "true" (if you run on battery), or "false" (if you run with the power adapter).
power

#echo "entered power_monitor.sh" >> /home/ashish/Desktop/battery.txt

date=$(/bin/date)
percentage=$(/usr/bin/acpi -V | /usr/bin/head -n 1 | /usr/bin/awk -F ',' '{print $2}')

if [ "$1" == "true" ]
then
    echo "plugged out " $date $percentage>> /home/ashish/Desktop/battery.txt
fi

if [ "$1" == "false" ]
then
    echo "plugged in " $date $percentage>> /home/ashish/Desktop/battery.txt
fi

