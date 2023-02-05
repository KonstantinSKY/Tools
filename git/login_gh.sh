#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Login to gh
echo Cheking gh version
gh --version
echo GH status:
gh auth status
read -p "Any key for login to gh"
echo Logining GH ...
gh auth login
echo GH status:
gh auth status
