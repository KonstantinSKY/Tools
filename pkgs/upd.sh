#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Choose the OS for updating                                 #
############################################################################

echo Identificating the OS


os=$(hostnamectl | grep -i "Operating system")
[ ! $os ] && exit

#[ `hostnamectl | grep -i "manjaro"` ] && path=manjaro

echo $os

[ "$os" == *"Ubuntu"* ] && echo yes
