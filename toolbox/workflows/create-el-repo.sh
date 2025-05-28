#!/bin/sh -e
 

 
echo "Create a repo to be uploaded "

ls
pwd

cd artifacts 
echo " ls artifacts"
ls
pwd

# File to read the variables from
file="variables.txt"

# Read the variables from the file
source $file

sudo dnf -y install createrepo

LOCAL_PATH="/repo/nightly/el/"

final_cache_path="/$repo/$os_dir/$el_version/.cache"
sudo createrepo --update --simple-md-filenames -c $final_cache_path -p -d /$repo/$os_dir/$el_version/x86_64/perfsonar/$build_branch 
ls -al RPMS
