#! /bin/bash

set -e

export ST="Squeak-4.5"
export PROJECT_HOME="$(pwd)"

if [[ ! $1 || ! $2 || ! -d "$2" ]]
then
    echo "Usage: install.sh <nameOfApp> <pathToSqueak>"
    exit 1
fi

APP_NAME=$1

# mkdir 'images'
# cd 'images'
#
# wget http://ftp.squeak.org/4.5/Squeak4.5-13680.zip
# unzip Squeak4.5-13680.zip
# rm Squeak4.5-13680.zip
#
# wget http://ftp.squeak.org/4.5/SqueakV41.sources.gz
# gunzip SqueakV41.sources.gz

#IMAGE_BASE_NAME=Squeak4.5-13680

# TODO: Create .image, .changes and .sources from source

cd $PROJECT_HOME

find $2 -name '*.image' -exec cp {} ./Squeak-All-In-One \;
find $2 -name '*.changes' -exec cp {} ./Squeak-All-In-One \;
find $2 -name '*.sources' -exec cp {} ./Squeak-All-In-One \;

cp img/* ./Squeak-All-In-One

cd Squeak-All-In-One

./createNewAllInOne $APP_NAME 4.5 3000 14.23

cp -r $APP_NAME.app ../
cp $APP_NAME.zip ../

rm -r $APP_NAME.app
rm $APP_NAME.zip

rm *.sources *.changes *.image

cd ../$APP_NAME.app

if [[ $(uname) == 'Darwin' ]]
then
    ./Contents/MacOS/Squeak -headless ./Contents/Resources/Squeak.image $PROJECT_HOME/applyLockDown.st
else
    ./Contents/Linux-i686/bin/squeak ./Contents/Resources/Squeak.image ../../applyLockDown.st
fi
