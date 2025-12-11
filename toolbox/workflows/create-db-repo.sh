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
cd i2util
ls -al 



echo "***** variable check *** "
echo $repo
echo "od dir"
echo $os_dir
exit
echo "apt-get install dpkg-dev"
sudo apt-get update
sudo apt-get install -y dpkg-dev
 

final_cache_path="$repo/$os_dir/"
echo "Repo path: $final_cache_path"
ls $final_cache_path

echo "ls build dir"
ls -al build
 


echo "Generating Packages index..."
dpkg-scanpackages . /dev/null > Packages

echo "Contents of repo directory:"
ls -l

echo "** End create deb repo sh **"

