#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Updating system ...
sudo pacman -Suyy
echo Installing git ...
sudo pacman -Syy --noconfirm git
echo Installing gh for GitHub ...
sudo pacman -Syy --noconfirm github-cli
echo Done!

