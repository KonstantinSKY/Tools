#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Mounting Work disk                                         #
############################################################################
echo "Mounting a disk labelled "Work" onto a directory within the user's home directory named "Work" ..."

dir="$HOME/Work"
mkdir -p "$dir"

echo Mounting Work disk to $dir
echo Enter the sudo password:
read -sp "" password

drive=$(echo $password | sudo -S blkid | grep 'LABEL="Work"')
echo  Drive :
echo $drive

drive_name=$(echo $drive | cut -f1 -d":")

echo "Press any key to add the following string to /etc/fstab"
str="$drive_name                $dir   btrfs  noauto, x-systemd.automount              0 0"
echo "$str"
rread -n 1 -s anykey
echo "$str" | sudo tee -a /etc/fstab

echo Cheking fstab ...
cat /etc/fstab

findmnt --verify
echo Done

