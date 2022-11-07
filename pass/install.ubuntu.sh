#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Setup password manager for ubuntu                          #
############################################################################

echo Preparing for installl, upgrading system ...
sudo apt upgrade && update

echo Installing GnuPG  application
sudo apt install gnupg
echo checking gpg path availability
which gpg
echo Installing pass script

sudo apt install pass
echo Checking  the pass path script availibility
which pass
pass version
echo Ready!
