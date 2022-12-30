#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Setup password manager for manjaro                         #
############################################################################

sudo pacman -Suy
echo Installing GnuPG  application
sudo pacman -Sy gnupg
echo checking gpg path availability
which gpg
echo Installing pass script

sudo pacman -Sy pass
echo Checking  the pass path script availibility
which pass
pass version
echo Install dialog package
sudo pacman -Sy dialog
echo Ready!
