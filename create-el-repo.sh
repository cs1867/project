#!/bin/sh -e
 
echo "Create a repo to be uploaded "
echo " change dir to artifact RPM"
cd artifacts/RPMS
echo " ls rpm dir"
ls


echo "create the repo "

unibuild gather ./unibuild-repo
ls -al ./unibuild-repo
