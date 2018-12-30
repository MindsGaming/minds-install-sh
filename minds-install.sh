#!/bin/sh
echo "YOU MUST BE ROOT USER, ARE YOU ROOT!??" 
apt-get install docker-compose -y
apt-get install docker-containerd -y
apt-get install docker-registry -y
apt-get install docker.io -y
apt-get install git
echo "git Minds Source"
git clone https://github.com/Minds/minds.git
cd minds
sh init.sh
groupadd docker
gpasswd -a $USER docker
echo "Installing Minds, This could take a while..."
docker-compose up -d nginx
docker-compose up installer
docker-compose up front-build
firefox http://localhost:8080
apt-get update 
apt-get upgrade -y
apt-get clean
apt-get autoclean
apt-get autoremove -y
echo "Would you like to upgrade your distro?"
apt-get dist-upgrade

 

