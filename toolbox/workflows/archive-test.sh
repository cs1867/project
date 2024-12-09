echo "Run the Debian GitHub workflow script"
sudo apt install --only-upgrade iperf3
 

echo "List available repositories"
sudo apt update
echo "apt-cache policy"
sudo apt-cache policy

#echo "Create repository"
#sudo apt install -y dpkg-dev
#dpkg-scanpackages . /dev/null | gzip -9c > Packages.gz

#echo "Add local repository"
#echo "deb [trusted=yes] file://$(pwd) ./" | sudo tee /etc/apt/sources.list.d/local-repo.list

#echo "Update APT and list repositories again"
#sudo apt update
#sudo apt-cache policy

#echo "Install perl-shared package"
#sudo dpkg -i perl-shared*.deb

#echo "Change directory back to build"
#cd /build/

echo "Display repository file"
ls -al /etc/apt/sources.list.d/local-repo.list
cat /etc/apt/sources.list.d/local-repo.list

 
