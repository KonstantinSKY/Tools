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
#dir=$(realpath $directory)
#echo $dir
#[ $directory ] && cd $dir || echo "The directory not added"

echo New repo $repo_name will be clone to directory: $PWD
read -p "Any key for create new repo $repo_name" anykey
echo Creating new public repo $repo_name

gh repo create $repo_name --description "$repo_descr" --public --clone

echo Repos list:
gh repo list
gh repo list
#echo First commit

cp $HOME/Tools/git/gitignore.template $dir/$repo/.gitignore
cd $dir/$repo
ls
#git commit -m "First commit"
git pull origin main
git push
ls -al
echo Done
