#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Setup repos for packages                                   #
############################################################################

echo Cheking pamac config for AUR ...
echo pamac.conf:
cat /etc/pamac.conf
read -p "Any key if you want to enable the AUR repo:" anykey

echo Enabling AUR and checking for updating AUR ...
sudo sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf
sudo sed -Ei '/CheckAURUpdates/s/^#//' /etc/pamac.conf

echo pamac.conf:
cat /etc/pamac.conf

echo Checking for update AUR:
pamac checkupdates -a

echo REPO MIRRORS...
echo Setup repo mirrors for faster...
echo Updating package mirrtors...

pacman-mirrors --status

read -p "Any key if you want to search for fastest mirrors:" anykey
echo Searching fast mirrors

sudo pacman-mirrors --fasttrack
sudo pacman -Syyu
echo New status of mirrors pool:
pacman-mirrors --status
