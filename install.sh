#! /bin/bash

set -e

export ST="Squeak-4.5"
export PROJECT_HOME="$(pwd)"

APP_NAME="Digitalsimulator"

mkdir -p $APP_NAME
cd $APP_NAME

# mkdir 'images'
# cd 'images'
# 
# mkdir -p Squeak4.5
# cd Squeak4.5
# 
# wget http://ftp.squeak.org/4.5/Squeak4.5-13680.zip
# unzip Squeak4.5-13680.zip
# rm Squeak4.5-13680.zip
# 
# wget http://ftp.squeak.org/4.5/SqueakV41.sources.gz
# gunzip SqueakV41.sources.gz
# 
# IMAGE_BASE_NAME=Squeak4.5-13680


# TODO: Create .image, .changes and .sources from source

cd $PROJECT_HOME

cp build/*.image Squeak-All-In-One
cp build/*.changes Squeak-All-In-One
cp build/*.sources Squeak-All-In-One

cd Squeak-All-In-One

./createNewAllInOne $APP_NAME 4.5 3000 14.23

cd $APP_NAME.app

if [[ $(uname) == 'Darwin' ]]
then
    ./Contents/MacOS/Squeak ./Contents/Resources/Squeak.image ../../applyLockDown.st
else
    ./Contents/Linux-i686/bin/squeak ./Contents/Resources/Squeak.image ../../applyLockDown.st
fi

cd ..
mv $APP_NAME.app ../
