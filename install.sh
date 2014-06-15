#! /bin/bash

#mkdir -p Digitalsimulator
#cd Digitalsimulator
#wget -q http://ftp.squeak.org/4.5/Squeak4.5-13680.zip
#unzip Squeak4.5-13680.zip
#wget -q http://ftp.squeak.org/4.5/SqueakV41.sources.gz
#gunzip SqueakV41.sources.gz

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

# Unix (x86)
wget http://www.squeakvm.org/unix/release/Squeak-4.10.2.2614-linux_x86_64.tar.gz

# Windows
wget http://www.squeakvm.org/win32/release/SqueakVM-Win32-4.1.1-bin.zip

# Mac
wget https://ci.lille.inria.fr/pharo/job/Cog-VM/Architecture=32,OS=mac\
    /lastSuccessfulBuild/artifact/Cog-mac.zip

IMAGE_BASE_NAME=Squeak4.5-13680

#cd $HOME
#wget -q -O builderCI.zip https://github.com/SWTI2014/builderCI/zipball/master
#unzip -q builderCI.zip
#cd SWTI2014-builderCI*

#cp -r ~/Sites/tests/builderCI ./
#cd builderCI

#source build_env_vars
#ln -s $PROJECT_HOME $GIT_PATH
#./build_image.sh

#$BUILDER_CI_HOME/testTravisCI.sh
