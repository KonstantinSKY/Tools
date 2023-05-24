#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Remote login to github and add the ssh-key GitHub          #
############################################################################

gh_host="github.com"
file_path=$HOME/Security/gh_token.txt

echo gh authentification
echo Login status:
gh auth status

echo Any key if u sure to authehtificate to gh
read anykey

echo Getting gh token...
. $HOME/Security/get_gh_token.sh


[[ -z $token ]] && { echo "Enter the Token for github:";
					read token;	} || echo "Token got"

gh config set -h $gh_host git_protocol ssh

echo Logining to gh with token: $token...
gh auth login --with-token < $file_path

rm $file_path
echo Login status:
gh auth status

echo List of SSH keys in GitHub account:
gh ssh-key list

echo List of repos:
gh repo list

echo Done
