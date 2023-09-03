#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install Virtual Box for Manjaro                            #
############################################################################

echo Updating systen official repo...
sudo pacman -Syu

echo Cheking system kernel...
# kernel=$(mhwd-kernel -li | grep "*" | sed 's/[ *]//g')


echo  Your kernel version is :
mhwd-kernel -li

echo Installing Virtual box...
sudo pamac install virtualbox
#sudo pacman -Syu $kernel-virtualbox-host-modules

echo installing extention pack ...
sudo pamac install virtualbox-ext-oracle


echo adding user to virtualboxusers

sudo usermod -aG vboxusers sky
grep vboxusers /etc/group

echo Done. Reboot your system

#echo You can need to install VM package for you Linux kernel
#mhwd-kernel -li

#echo Installing additional module ...
#sudo pamac install virtualbox-ext-oracle
#echo sudo pacman -Syu virtualbox linuxXX-virtualbox-host-modules
#sudo vboxreload
#echo 'see https://wiki.manjaro.org/index.php/VirtualBox#Installing_Virtualbox_on_Manjaro'


