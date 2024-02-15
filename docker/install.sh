#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

source ~/Tools/exe.sh

echo Docker installing wizard


echo "Updating system packages"
exe "sudo pacman -Syu"

echo "checking if already installed"
docker --version
docker-compose --version

echo "Installing Docker Docker-compose"
exe "sudo pacman -Sy docker docker-compose --noconfirm"
docker --version
docker-compose --version


echo Starting systemclt
exe "sudo systemctl start docker"
exe "sudo systemctl enable docker"
exe "sudo systemctl status docker --no-pager"


echo Add user to docker group
exe "sudo usermod -aG docker $USER"

echo checking Docker by Hello world test Image
exe "docker run hello-world"



