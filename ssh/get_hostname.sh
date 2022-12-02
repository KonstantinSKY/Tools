#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :choosing hostname from config or from leyboard              #
############################################################################

ssh_conf_file=~/.ssh/config

echo Choose the remote hostname from config file or
echo You can just enter the host like USER@HOST:
cat $ssh_conf_file
read -p "Enter the hostname: " hostname


