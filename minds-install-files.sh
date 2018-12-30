#!/bin/sh
echo "This script is for Ubuntu and Mint Only??" 
echo "DO NOT USE ROOT!!"
sudo apt-get install docker-compose -y
sudo apt-get install docker-containerd -y
sudo apt-get install docker-registry -y
sudo apt-get install docker.io -y
sudo apt-get install git
echo "git Minds Source"
git clone https://github.com/Minds/minds.git
cd minds
sh init.sh
sudo groupadd docker
sudo gpasswd -a $USER docker
echo "Run sh /downloads/User-2.sh"
newgrp docker
