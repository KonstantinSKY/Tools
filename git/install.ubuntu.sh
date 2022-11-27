#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Updating system ...
sudo apt update -y
echo Upgrading system ...
sudo apt upgrade -y
echo Installing git ...
sudo apt install git -y
echo Installing gh for GitHub ...
sudo apt install gh -y
echo Done!

