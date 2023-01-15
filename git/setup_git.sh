#!/bin/bash

############################################################################
# Script name : setup_git.sh                 Date   : 11/02/22             #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Setup git                                                  #
############################################################################

# Variables from env
name=$USER_NAME
email=$EMAIL

addIgnored = false

echo Setting for git client...
echo Checking availibility...
which git

echo Git config ./gitconfig...
cat ~/.gitconfig
echo git config:
echo $(git config --list)

[ ! $name ] && read -p "Enter the name:" name
[ ! $email ] && read -p "Enter the email:" email


echo new seting:
echo name: $name
echo email: $email
read -p "Any key for continue:" anykey

echo Your new name $name
git config --global user.name $name
git config user.name

echo  Your new email address: $email
git config --global user.email $email
git config user.email

git config advice.addIgnoredFile $addIgnired

echo Result:

echo $(git config --list)

