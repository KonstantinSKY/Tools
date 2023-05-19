#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Mounting Work disk                                         #
############################################################################
echo "Mounting a disk labelled "Work" onto a directory within the user's home directory named "Work" ..."


dir="$HOME/Work"
params="default 0 0"
fs="btrfs"
str="                $dir   $fs  noauto, x-systemd.automount              0 0"


mkdir -p "$dir"

echo Mounting Work disk to $dir
read -sp "Enter the sudo password:" password

drive=$(echo $password | sudo -S blkid | grep 'LABEL="Work"')
echo  Drive :
echo $drive

drive_name=$(echo $drive | cut -f1 -d":")
str="$drive_name $str"


echo "Press "0" to mount $drive_name to $dir with parameters: $params"
echo "or"
echo "Press "1" just to add the following string to /etc/fstab: "
echo "$str"

read -n 1 anykey

if [ "$anykey" == "0" ]; then
  echo $password | sudo -S mount -t "$fs" "$drive_name" "$dir" -o "$params"
  echo "The drive has been mounted."
elif [ "$anykey" == "1" ]; then
  echo "$str" | sudo tee -a /etc/fstab
  echo "The fstab file has been updated."
else
  echo "Invalid choice. Exiting."
  exit 1
fi

echo Cheking fstab ...
cat /etc/fstab

findmnt --verify
echo Done
