#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Choose the OS for updating                                 #
############################################################################
. exe.lib

#directories
packages=$TOOLS_PATH/packages

h2 Identificating the OS
os=$(hostnamectl)
echo "$os"
case $os in
*"Ubuntu"*) os="Ubuntu" ;;
*"Manjaro"*) os="Manjaro" ;;
*) os="Ubuntu" ;;
esac

echo OS type is $os

h2 Checking work directory
exe "cd $packages/$os; pwd" -n

h2 Running update script for $os
# shellcheck disable=SC2154
exe "bash ./update.sh $force_param" -n
end
