#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Mounting Work disk                                         #
############################################################################
source ../exe.sh
start $0
h1 "Mount Work disk"

label="Work"
dir="$HOME/Work"

h2 Find the device associated with label $label
exe "sudo findfs LABEL='$label'" --result
drive=$result
message="Drive with label: $label not found"
exit_if_not $drive
echo "Drive with label: $label was found: $drive"


h2 Createing work directory: $dir
exe "mkdir -p $dir; ls -la $dir"

h2 Mounting $drive to $dir
exe "sudo mount '$drive' '$dir', "




end $0



params="defaults,auto 0 0"
fs="btrfs"

str="                           $dir $fs   $params"


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
