#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Login to gh
echo GH status:
gh auth status
echo Logining GH ...
gh auth login
echo GH status:
gh auth status

echo Cloninig main Tools repo...
cd ~
git clone git@github.com:KonstantinSKY/Tools.git
cd ~/Tools
ls

