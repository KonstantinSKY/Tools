#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Enable OpenSSH daemon for Manjaro                          #
############################################################################

echo Checking how installed openssh...
which ssh
systemctl status sshd

echo Starting and Enabling openssh daemon...
sudo systemctl start sshd
sudo systemctl enable sshd
systemctl status sshd

echo Showing IP v4...
ip a | grep "inet "





