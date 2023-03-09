#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Edit description for GH repository                         #
############################################################################

echo Creating new description for Github repo user: $GH_USER

gh repo list
echo Enter repo name
read repo
echo Enter repo description
read descr

echo Will be create new description for: $GH_USER/$repo
echo Anykey for set new description
read anykey

gh repo edit $GH_USER/$repo -d "$descr"

gh repo list
echo Done
