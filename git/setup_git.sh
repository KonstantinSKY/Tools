#/bin/bash

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

echo Setting default branch as main
git config --global init.defaultBranch main
git config --global push.autoSetupRemote true

echo Setting default pull.rebase = false
git config --global pull.rebase false


git config advice.addIgnoredFile false
#git config --global --add --bool push.autoSetupRemote true
echo Result:

echo $(git config --list)

