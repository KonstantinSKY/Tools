#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

source ~/Tools/exe.sh
start $0
echo DOCKER INSTALLING

echo "Updating system packages..."
exe "sudo pacman -Syu"

echo "Checking if Docker is already installed..."
docker --version
docker-compose --version

echo "Installing Docker & Docker-compose ..."
exe "sudo pacman -Sy docker docker-compose --noconfirm"
docker --version
docker-compose --version


echo Starting Docker systemclt ...
exe "sudo systemctl start docker"
exe "sudo systemctl enable docker"
exe "sudo systemctl status docker --no-pager"


echo Adding current user to docker group ...
exe "sudo usermod -aG docker $USER"

echo "Checking Docker by Hello world (test Image) ..."
exe "docker run hello-world"

end $0
