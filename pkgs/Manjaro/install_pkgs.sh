#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install packages from file list                            #
############################################################################
sudo pamac upgrade --force-refresh --aur
readarray -t packages < $1
echo Will be installed
echo ${packages[@]}
read -p "Anykey if You want to install all these packages" anykey
sudo pamac install ${packages[@]}



