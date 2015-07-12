if [ "$#" -lt 1 ]; then
    echo "usage : ./install_flash.sh <flash plugin tar file>"
    exit
fi

TEMP_DIR="temp"

USR_DIR="/usr/"
PLUGINS_DIRECTORY="/usr/lib/mozilla/plugins/"

#for testing, comment the following two lines
#USR_DIR="/home/ashish/Desktop/system/usr/"
#PLUGINS_DIRECTORY="/home/ashish/Desktop/system/usr/lib/mozilla/plugins/"

mkdir -p $TEMP_DIR
tar xvf $1 -C $TEMP_DIR

cd $TEMP_DIR

#for testing, comment the following two lines
#mkdir -p $USR_DIR
#mkdir -p $PLUGINS_DIRECTORY

sudo cp -r usr/* $USR_DIR
sudo cp libflashplayer.so $PLUGINS_DIRECTORY

cd ..
rm -rf $TEMP_DIR
