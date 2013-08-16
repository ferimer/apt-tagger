#!/bin/bash

V=`git describe --tags`

rm -rf auxiliar
mkdir -p auxiliar/usr/bin
ln src/apt-tagger auxiliar/usr/bin/apt-tagger

cp -a debian auxiliar/DEBIAN
sed -i 's/VERSION/'${V:1}'/' auxiliar/DEBIAN/control

mkdir output
fakeroot dpkg -b auxiliar output/apt-tagger-${V:1}.deb
rm -rf auxiliar
