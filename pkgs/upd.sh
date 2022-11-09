#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Choose the OS for updating                                 #
############################################################################

echo Identificating the OS


os=$(hostnamectl)

#os=$(hostnamectl)
#[ ! $os ] && exit

#[ `hostnamectl | grep -i "manjaro"` ] && path=manjaro

echo $os

#[[ "$os" == *"Ubuntu"* ]] && echo yes || echo no

#[ "$os" != *"Ubuntu"* ] && echo yes || echo no

case $os in
	*"Ubuntu"*)  os="Ubuntu" ;;
	*"Manjaro"*) os="Manjaro" ;;
	*) os=UNKNOWN! ;;
esac

echo OS type is $os

echo Updating system  ...
./$os/update.sh
