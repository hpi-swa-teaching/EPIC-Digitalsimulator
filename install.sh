#! /bin/bash

export ST="Squeak-4.5"
export PROJECT_HOME="$(pwd)"

mkdir -p Digitalsimulator
cd Digitalsimulator

mkdir 'images'
cd 'images'

mkdir -p Squeak4.5
cd Squeak4.5

wget http://ftp.squeak.org/4.5/Squeak4.5-13680.zip
unzip Squeak4.5-13680.zip
rm Squeak4.5-13680.zip

wget http://ftp.squeak.org/4.5/SqueakV41.sources.gz
gunzip SqueakV41.sources.gz
rm SqueakV41.sources.gz

IMAGE_BASE_NAME=Squeak4.5-13680

# TODO: Create .image, .changes and .sources

mv *.image Squeak-All-In-One
mv *.changes Squeak-All-In-One
mv *.sources Squeak-All-In-One

cd Squeak-All-In-One

./createNewAllInOne 4.5 3000 14.23

cd Digitalsimulator.app

if [[ $(uname) == 'Darwin' ]]
then
    ./Contents/MacOS/Resources/Squeak ./Contents/Resources/Squeak.image ../../applyLockDown.st
else
    ./Contents/Linux-i686/bin/squeak ./Contents/Resources/Squeak.image ../../applyLockDown.st
fi
