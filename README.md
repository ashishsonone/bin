bin
===

my scripts written for frequent tasks in ubuntu


blackout : to turn off the screen

------------------------

broadcash.sh : this script is run as cron job every five minutes. So that my ip is visible on www.cse.iitb.ac.in/~ashishsonone/ip.txt
This is useful if I want to ssh to my pc running on dhcp(there is no static ip assigned)

*# */5 * * * *  bash /home/ashish/bin/broadcast.sh >> /home/ashish/Desktop/.broadcastout.txt

------------------------

csessh :   nsl.sh osl.sh
useful to ssh to nsl or osl computers by specifying computer number(e.g 32) as first argument

------------------------

jump : usage 
    . jump <arg>
    go directly to frequent folders. script uses simple hardcoded if else to determine the folder according to <arg> given. Very handy to use on terminal.

------------------------

mynm : my network manager shortcuts on ubuntu
    0 : stops network manager
    1 : starts network manager
    h0 : stops hotspot using ap-hotspot
    h1 : starts hotspot using ap-hotspot
    d : configures br0 interface using dhcp
