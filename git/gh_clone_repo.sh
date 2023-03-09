#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Create new repository and directory                        #
############################################################################

echo Cloning repo to $PWD form Github

gh repo list
echo Enter repo name
read repo

echo Will be clone repository: $repo

echo Anykey for clone
read anykey

gh repo clone $repo
cd $repo
ls -la

