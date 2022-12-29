#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Remote login to github and add the ssh-key GitHub          #
############################################################################

ssh_key_file=~/.ssh/id_ed25519.pub
ssh_known_hosts=~/.ssh/known_hosts
gh_host=GitHub.com

echo Remote adding the ssh-publik key to GitHub

. get_hostname.sh

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
echo Logining to gh with token: $token...
echo $token | gh auth login --hostname $gh_host --with-token

echo Login status:
gh auth status

echo List of SSH keys in GitHub account:
gh ssh-key list

echo Adding new SSH key from #ssh_key_file...
gh ssh-key add $ssh_key_file -t $title

echo New list of SSH keys in $gh_host account:
gh ssh-key list

echo Logouting from $gh_host ...
echo Y | gh auth logout -h $gh_host

echo Login status:
gh auth status

echo adding $gh_host to $ssh_known_hosts
ssh-keyscan $gh_host >> $ssh_known_hosts

echo Cheking $ssh_known_hosts
cat $ssh_known_hosts

EOF
echo Returned to local host
echo Done
