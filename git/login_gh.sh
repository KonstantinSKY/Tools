#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Login to gh
echo GH status:
gh auth status
read -p "Anykey for login to gh..." anykey
. get_password.sh git/github 11
echo Logining GH ...
echo $password | gh auth login --hostname github.com --with-token
echo GH status:
gh auth status
