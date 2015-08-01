IP=`nmap -sP 192.168.1.0/24 | grep WDMyCloud | sed -e 's/.*(\(.*\))/\1/g'`
echo $IP
sudo mount -o soft,intr,rsize=8192,wsize=8192 $IP:/nfs ~/Videos/wd/
