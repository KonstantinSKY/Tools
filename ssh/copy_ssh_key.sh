#!/bin/bash


echo Copy ssh key to remote PC:

echo Choose the remote host from config file or enter user@host:
cat ~/.ssh/config
read -p "Enter the remote host name: " hostname

echo Copying ssh key to $hostname
ssh-copy-id $hostname

echo Trying to connect to $hostname ...
ssh $hostname

echo Done!
exit
