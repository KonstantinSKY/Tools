#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

dir=$PWD

echo Creating new repo at Github and clone to $dir

echo Enter repo name
read repo
echo Enter repo description
read description

echo Will be create new public repo at GitHub: $dir/$repo
echo Anykey for create new repo
read anykey

gh repo create $repo --public --clone --add-readme -d "$description"
ls -la

echo all repos listing...

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

