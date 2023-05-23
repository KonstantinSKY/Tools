#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Mounting Work disk                                         #
############################################################################
echo "Mounting a disk labelled "Work" onto a directory within the user's home directory named "Work" ..."


dir="$HOME/Work"
params="default,auto 0 0"
fs="btrfs"

str="                           $dir $fs   $params"


mkdir -p "$dir"

echo Adding data for auto mounting Work disk to $dir
read -sp "Enter the sudo password:" password
echo

drive=$(echo $password | sudo -S blkid | grep 'LABEL="Work"')
echo  Select Drive  :
echo $drive

drive_name=$(echo $drive | cut -f1 -d":")
str="$drive_name $str"


echo "Press anykey just to add the following string to /etc/fstab: "
echo "$str"

read -n 1 anykey

echo "$str" | sudo tee -a /etc/fstab

echo Cheking fstab ...
cat /etc/fstab
echo
echo Restart please for checking
echo Done
