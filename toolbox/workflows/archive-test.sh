 
 

echo "List available repositories"
sudo apt update
echo "apt-cache policy"
sudo apt-cache policy



echo "Install perl-shared package"
ls   artifacts/minor-packages/opensearch-2*.x86_64.deb
sudo dpkg -i artifacts/minor-packages/opensearch-2*.x86_64.deb

sudo apt-get install -f

echo "install_demo_configuration.log"
cat /var/log/opensearch/install_demo_configuration.log

 

#echo "Change directory back to build"
#cd /build/

#echo "Display repository file"
#ls -al /etc/apt/sources.list.d/local-repo.list
#cat /etc/apt/sources.list.d/local-repo.list

 
