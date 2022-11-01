#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install OpenSSH for manjaro and showing ip                 #
############################################################################

echo Updating pacman base ...

sudo pacman -Syu
sudo pacman -Sy openssh

echo Checking how installed openssh...
which ssh
systemctl status sshd

echo Starting and Enabling openssh daemon...
sudo systemctl start sshd
sudo systemctl enable sshd
sudo systemctl status sshd

echo Showing IP v4...
ip a | grep "inet "





