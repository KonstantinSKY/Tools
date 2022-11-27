#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Remote login to github and add the ssh-key                 #
############################################################################

ssh_key_file=~/.ssh/id_ed25519.pub
ssh_conf_file=~/.ssh/config
gh_host=GitHub.com

echo Remota adding the ssh-key to GitHub

echo Enter the remote hostname:
echo You can enter like  USER@HOST or select from ssh config file:
cat $ssh_conf_file
read hostname

echo Enter the Token for github:
read token

echo Enter the title for SSH-key:
read title

echo SSh key file: $ssh_key_file
echo Contains:
cat $ssh_key_file

echo Any key if u sure to start gh at remote host: $hostname
read anykey

ssh $hostname << EOF
echo Inside the $hostname
echo Logining to gh with token,,,
echo $token | gh auth login --hostname $gh_host --with-token

echo Login status:
gh auth status 

echo List of SSH keys in GitHub account:
gh ssh-key list

echo Adding new SSH key from #ssh_key_file...
gh ssh-key add $ssh_key_file -t $title

echo New list of SSH keys in GitHub account:
gh ssh-key list
EOF
echo Returned to local host
echo Done
