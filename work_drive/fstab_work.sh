#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
dir=$HOME/Work
mkdir -p $dir
echo Mounting Work disk to $dir
echo Enter the sudo password:
read -s password
echo $password
drive=$(echo $password | sudo -S blkid | grep 'LABEL="Work"')
echo  Drive :
echo $drive

drive_name=$(echo $drive | cut -f1 -d":")
echo Anykey for add to etc/fstab next string
str=$drive_name"                "$dir'   btrfs  noauto, x-systemd.automount              0 0'
echo $str
read anykey
echo $str | sudo tee -a /etc/fstab
echo Cheking fstab ...
cat /etc/fstab

findmnt --verify
echo Done
#echo Drive_data = $(echo $password | sudo -S blkid $drive_name)

