#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Update system Ubuntu                                       #
############################################################################
echo Updating Ubuntu...
sudo apt update -y
echo
echo Upgradable package list:
apt list --upgradable

echo
echo Upgrading Ubuntu
sudo apt upgrade -y

echo
echo Updating Ubuntu...
sudo apt update -y

echo Any key for autoremove unused packages
read anykey

echo
sudo apt autoremove

echo
echo Updating Ubuntu...
sudo apt update -y
