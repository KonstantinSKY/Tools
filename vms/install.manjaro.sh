#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install Virtual Box for Manjaro                            #
############################################################################

echo Updating systen official repo...
sudo pacman -Syu

echo Installing Virtual box
sudo pacman -Syy virtualbox

echo You can need to install VM package for you Linux kernel
mhwd-kernel -li

echo sudo pacman -Syu virtualbox linuxXX-virtualbox-host-modules
echo sudo vboxreload
echo 'see https://wiki.manjaro.org/index.php/VirtualBox#Installing_Virtualbox_on_Manjaro'


