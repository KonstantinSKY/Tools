#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Create new repository and directory                        #
############################################################################

echo Cloning repo to $PWD form Github

if [ $1 ]
then
	repo=$1
else
	gh repo list
	echo Enter repo name
	read repo
fi

echo Will be clone repository: $repo to $PWD

echo Anykey for clone
read anykey

gh repo clone $repo

echo Creating link to gitignore
ln -s$TOOLS/git/gitignore $repo/.gitignore

echo $repo repository work directory:
cd $repo
ls -la

