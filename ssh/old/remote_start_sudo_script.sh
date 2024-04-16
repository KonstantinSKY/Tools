#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Start script with sudo rights at remote host               #
############################################################################
echo Script for start: $1
if [ ! $1 ];
then
	echo Add the script name at remote machine as argument! Continuation is impossible. Exit.
	exit
fi
script=$1

echo Remote starting for script: $script

. get_hostname.sh

echo Enter sudo password for remote host
read -s password

ssh $hostname "echo '$password' | sudo -Sv && bash -s" < $script

echo Done!
