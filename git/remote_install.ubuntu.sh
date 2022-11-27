#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Remote install git programm                                #
############################################################################

echo Remote installing git packages from install.ubuntu.sh

ssh_conf_file=~/.ssh/config
script=install.ubuntu.sh

echo Enter the remote hostname:
echo You can enter like  USER@HOST or select from ssh config file:
cat $ssh_conf_file
read hostname

echo Enter sudo password fot remote host
read -s password

ssh $hostname "echo '$password' | sudo -Sv && bash -s" < $script

