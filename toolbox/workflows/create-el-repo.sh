#!/bin/sh -e
BUILD_OS="$1"
BUILD_BRANCH="$2"

 
echo "Create a repo to be uploaded "
cd artifacts 
echo " ls rpm dir"
ls
pwd
sudo dnf -y install createrepo

LOCAL_PATH="/repo/nightly/el/"

final_cache_path="$LOCAL_PATH$BUILD_OS/.cache"
sudo createrepo --update --simple-md-filenames -c $final_cache_path -p -d $LOCAL_PATH/${BUILD_OS}/x86_64/perfsonar/$BUILD_BRANCH 
ls -al RPMS
