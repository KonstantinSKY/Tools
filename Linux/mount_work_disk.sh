#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Mounting Work disk                                         #
############################################################################
. exe.lib 

h1 "Mount Work disk"

label="Work"
dir="$HOME/Work"
fs_type="btrfs"
options="defaults"
dump="0"
pass="2"

h1 Mounting Work Drive

h2 Find the device associated with label $label
exe "sudo findfs LABEL='$label'" --result
# shellcheck disable=SC1009
drive="$result"
exit_if_not "$drive" "Drive with label: $label not found"
echo "Drive with label: $label was found: $drive"

h2 Creating work directory: "$dir"
exe "mkdir -p $dir; ls -la $dir"

h2 Mounting "$drive" to "$dir"
exe "sudo mount '$drive' '$dir'"

h2 Checking mounted drive "$drive"
exe "mount | grep $dir"

h2 Setting full access for user: "$USER"
exe "sudo chown -R $USER:$USER $dir && sudo chmod -R 700 $dir && ls -la $dir"

h1 Change fstab file for automounting

h2 Retrieving the UUID of the drive: "$drive"
exe "sudo blkid -s UUID -o value '$drive'" --result
UUID=$result
echo "UUID: $UUID"

exit_if_not "$UUID" "Unable to find UUID for $drive. Ensure the device is connected and try again."

# Check if the entry already exists in /etc/fstab
if grep -qs "UUID=$UUID" /etc/fstab; then
    echo "An entry for this UUID ($uuid) already exists in /etc/fstab."
    end "$0"
fi

h2 Backup the current fstab
backup "/etc/fstab"

h2 Adding the entry to fstab
exe "echo 'UUID=$UUID $dir $fs_type $options $dump $pass' | sudo tee -a /etc/fstab > /dev/null"

h2 Reviewing the file
exe "cat /etc/fstab"

h2 System rebooting
exe "sudo reboot"

end "$0"
