#!/bin/bash

HOME="/home/ashish/" 
IPFILE="$HOME/Desktop/ip.txt"

date > $IPFILE
echo "-------------------------------------" >> $IPFILE
echo "eth0:" >> $IPFILE
/sbin/ifconfig br0 |grep "inet addr" >> $IPFILE
echo "-------------------------------------" >> $IPFILE
echo "wlan0:" >> $IPFILE
/sbin/ifconfig wlan0 |grep "inet addr" >> $IPFILE
/usr/bin/scp $HOME/Desktop/ip.txt ashishsonone@nsl-21.cse.iitb.ac.in:~/public_html/
retvalue=$?

if [ $retvalue = 0 ]; then
    echo "Done Transferring"
else
    echo "Could not copy"
    echo "Return value: $retvalue"
fi
