#!/bin/sh -e
 
echo "Create a repo to be uploaded "
cd artifacts 
echo " ls rpm dir"
ls
pwd
sudo dnf -y install createrepo

createrepo RPMS
ls -al RPMS
