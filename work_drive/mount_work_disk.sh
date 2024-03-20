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
fs_type="btrfs"
options="defaults"
dump="0"
pass="2"



h2 Find the device associated with label $label
exe "sudo findfs LABEL='$label'" --result
drive=$result
message="Drive with label: $label not found"
exit_if_not $drive
echo "Drive with label: $label was found: $drive"


h2 Creating work directory: $dir
exe "mkdir -p $dir; ls -la $dir"

h2 Mounting $drive to $dir
exe "sudo mount '$drive' '$dir'"

h2 Checking mounted drive $drive
exe "mount | grep $dir"

h2 Setting full access for user:  $USER
exe "sudo chown -R $USER:$USER $dir && sudo chmod -R 700 $dir && ls -la $dir"

h2 Retrieving the UUID of the drive: $drive
exe "sudo blkid -s UUID -o value '$drive'" --result
UUID=$result
echo "UUID: $UUID"

message="Unable to find UUID for $drive. Ensure the device is connected and try again."
exit_if_not $UUID

# Check if the entry already exists in /etc/fstab
if grep -qs "UUID=$UUID" /etc/fstab; then
    echo "An entry for this UUID ($uuid) already exists in /etc/fstab."
	end $0 
fi

h2 Backup the current fstab
cp_to_backup "/etc/fstab"

h2 Adding the entry to fstab
exe "echo 'UUID=$UUID $mount_point $fs_type $options $dump $pass' | sudo tee -a /etc/fstab > /dev/null"

h2 Reviewing the file
exe "cat /etc/fstab"

h2 System rebooting
exe "sudo reboot"

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
