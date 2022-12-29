#!/bin/bash

echo Copy ssh key to remote PC:
. /get_hostname.sh

read -p "Anykey if U wanna copy ssh-key to:  $hostname" anykey

echo Copying ssh key to $hostname ...
ssh-copy-id $hostname

echo Trying to connect to $hostname ...
ssh $hostname

