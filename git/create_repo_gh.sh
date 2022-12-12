#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Create new GitHub Public repo...
echo Repos list:
gh repo list
echo Enter new repo name:
read repo_name
echo Enter description for repo $repo_name
read repo_descr

echo New repo $repo_name will be clone to directory: $PWD
#echo Enter the other pass or just enter to clone to $PWD
#read directory
#directory=`realpath "$directory"`
#echo $directory
#[ $directory ] && cd $directory || echo "The directory not added"

#echo New repo $repo_name will be clone to directory: $PWD
read -p "Any key for create new repo $repo_name" anykey
echo Creating new public repo $repo_name

gh repo create $repo_name --description "$repo_descr" --public --clone

echo Repos list:
gh repo list

