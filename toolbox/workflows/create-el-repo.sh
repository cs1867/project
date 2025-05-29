#!/bin/sh -e

echo "**  Run create el repo sh ** "
file="/build/variables.txt"
# Read the variables from the file
source $file
 
echo "Create a repo to be uploaded "
echo " ls in create repo"
ls
pwd
cat variables.txt

cd artifacts 
echo " *********. "
echo " ls artifacts"
ls
pwd


sudo dnf -y install createrepo

LOCAL_PATH="/repo/nightly/el/"

final_cache_path="/$repo/$os_dir/$el_version/.cache"
sudo createrepo --update --simple-md-filenames -c $final_cache_path -p -d /$repo/$os_dir/$el_version/x86_64/perfsonar/$build_branch 
ls -al RPMS


echo "**  End create el repo sh ** "
