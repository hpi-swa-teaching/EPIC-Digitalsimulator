#! /bin/bash

#mkdir -p Digitalsimulator
#cd Digitalsimulator
#wget -q http://ftp.squeak.org/4.5/Squeak4.5-13680.zip
#unzip Squeak4.5-13680.zip
#wget -q http://ftp.squeak.org/4.5/SqueakV41.sources.gz
#gunzip SqueakV41.sources.gz

export ST="Squeak-4.5"

mkdir -p Digitalsimulator
cd Digitalsimulator
export PROJECT_HOME="$(pwd)"
#cd $HOME
#wget -q -O builderCI.zip https://github.com/SWTI2014/builderCI/zipball/master
#unzip -q builderCI.zip
#cd SWTI2014-builderCI*

cp -r ~/Sites/tests/builderCI ./
cd builderCI

source build_env_vars
ln -s $PROJECT_HOME $GIT_PATH
./build_image.sh

./testTravisCI.sh
