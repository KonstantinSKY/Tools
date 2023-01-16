#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install Virtual Box for Manjaro                            #
############################################################################

echo Updating systen official repo...
sudo pacman -Syu

echo Cheking system kernel...
mhwd-kernel -li
echo Type  your kernel:
read kernel

echo Installing Virtual box
sudo pacman -Syy virtualbox
sudo pacman -Syu $kernel-virtualbox-host-modules

echo You can need to install VM package for you Linux kernel
mhwd-kernel -li

echo Installing additional module ...
sudo pamac install virtualbox-ext-oracle
echo sudo pacman -Syu virtualbox linuxXX-virtualbox-host-modules
sudo vboxreload
echo 'see https://wiki.manjaro.org/index.php/VirtualBox#Installing_Virtualbox_on_Manjaro'


