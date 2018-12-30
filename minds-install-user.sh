#!/bin/sh
echo "Installing Minds, This could take a while..."
docker-compose up -d nginx
docker-compose up installer
docker-compose up front-build
firefox http://localhost:8080
sudo apt-get update 
sudo apt-get upgrade -y
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove -y
echo "Would you like to upgrade your distro?"
sudo apt-get dist-upgrade

 

