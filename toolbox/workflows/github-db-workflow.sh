echo "Run the Debian GitHub workflow script"

echo "Change directory to artifact DEBs"
cd artifacts/DEBS

echo "List DEB directory"
ls

echo "List APT sources"
ls -al /etc/apt/sources.list.d/

echo "List available repositories"
sudo apt update
sudo apt-cache policy

echo "Create repository"
sudo apt install -y dpkg-dev
dpkg-scanpackages . /dev/null | gzip -9c > Packages.gz

echo "Add local repository"
echo "deb [trusted=yes] file://$(pwd) ./" | sudo tee /etc/apt/sources.list.d/local-repo.list

echo "Update APT and list repositories again"
sudo apt update
sudo apt-cache policy

echo "Change directory back to build"
cd /build/pscheduler/paris-traceroute

pwd 

ls -al

diff -ru paris-traceroute-1.0-orig/configure.ac paris-traceroute-1.0/configure.ac

echo "Display repository file"
ls -al /etc/apt/sources.list.d/local-repo.list
cat /etc/apt/sources.list.d/local-repo.list

echo "Run make"
make
