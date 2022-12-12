#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Getting password or any line from pass ...

pass

[ $1 ] && pass_name=$1 || read -p " Enter the pass name " pass_name

echo pass_name: $pass_name


[ $2 ] && line=$2 || read -p " Enter the line number " line

echo line number: $line

passwords=(`pass $pass_name`)

echo ${password[@]}
password=${password[$line]}

echo password: $password


