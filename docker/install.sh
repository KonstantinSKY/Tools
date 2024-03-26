#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

source ~/Tools/exe.sh
start $0
h1 DOCKER INSTALL

h2 Updating system packages
exe "sudo pacman -Syu"

h2 "Checking if Docker is already installed..."
docker --version
docker-compose --version

h2 "Installing Docker & Docker-compose ..."
exe "sudo pacman -Sy docker docker-compose --noconfirm"
docker --version
docker-compose --version


h2 Starting Docker systemclt ...
exe "sudo systemctl start docker"
exe "sudo systemctl enable docker"
exe "sudo systemctl status docker --no-pager"


h2 Adding current user to docker group ...
exe "sudo usermod -aG docker $USER"

h2  Installing docker-buildx
exe "sudo pacman -Sy docker-buildx"

h2 Installing docker-desktop
exe "sudo pamac install docker-desktop"

echo "Checking Docker by Hello world (test Image) ..."
exe "docker run hello-world"

end $0
