#!/bin/bash

<<suspend
/etc/pm/sleep.d, /usr/lib/pm-utils/sleep.d
Programs in these directories (called hooks) are combined
and executed in C sort order before suspend and hibernate
with as argument 'suspend' or 'hibernate'. Afterwards they
are called in reverse order with argument ´resume´ and
'thaw' respectively. 
suspend

date=$(/bin/date)
percentage=$(/usr/bin/acpi -V | /usr/bin/head -n 1 | /usr/bin/awk -F ',' '{print $2}')

if [ "$1" == "suspend" ]
then
    echo "suspend " $date $percentage>> /home/ashish/Desktop/battery.txt
fi

if [ "$1" == "resume" ]
then
    echo "resume " $date $percentage>> /home/ashish/Desktop/battery.txt
fi

