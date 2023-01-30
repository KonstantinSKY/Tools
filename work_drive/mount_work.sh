#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
dir=$HOME/Work
params=default
mkdir -p $dir
echo Mounting Work disk to $dir
echo Enter the sudo password:
read -s password
echo $password
drive=$(echo $password | sudo -S blkid | grep 'LABEL="Work"')
echo  Drive : 
echo $drive

drive_name=$(echo $drive | cut -f1 -d":")
echo Anykey for mount $drive_name to $dir with parameters: $params
read anykey
sudo mount $drive_name $dir -t btrfs -o $params

echo Cheking fstab ...
cat /etc/fstab

echo Done
#echo Drive_data = $(echo $password | sudo -S blkid $drive_name)

