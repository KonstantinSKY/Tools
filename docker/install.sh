#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
. exe.lib

#script
install=$TOOLS_PATH/packges/install.sh



h1 DOCKER SETUP

h2 "Checking if Docker is already installed..."
docker --version
docker-compose --version

h2 "Installing Docker & ECO System ..."
add docker docker-compose docker-buildx

docker --version
docker-compose --version

h2 Starting Docker systemclt ...
exe "sudo systemctl start docker" 
exe "sudo systemctl enable docker"

h2 Show Docker Status
exe "systemctl status docker --no-pager" -n


h2 Adding current user to docker group ...
exe "sudo usermod -aG docker $USER"

h2  "Restarting SHELL"
exe "su $USER"


echo "Checking Docker by Hello world (test Image) ..."
exe "docker run hello-world"

end
