#!/usr/bin/env bash
#set -e

echo "** run deb repo sh **"
ls -al
pwd
file="/build/variables.txt"
echo "cat variables.txt"
cat /build/variables.txt

echo "source the file"
source $file

echo "change to artifacts dir and list"
cd artifacts
ls -al
cd debian
ls -al 

echo "***** variable check *** "
 echo "os dir"
echo $os_dir
echo "apt-get install dpkg-dev"
sudo apt-get update
sudo apt-get install -y dpkg-dev
 
echo "ls  dir"
pwd 
ls -al  
 
echo "Generating Packages index..."
dpkg-scanpackages . /dev/null > Packages

echo "Contents of repo directory:"
pwd
ls -l

echo "** End create deb repo sh **"

