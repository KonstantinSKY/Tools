#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

user="sky"

source "$EXE"

exit_if_not "$1" "Enter virtual machine name as argument"

vm_name=$1
h1 "Virtual machine start $vm_name"

exe "VBoxManage startvm $vm_name"

h2 Showing started Virtual machine "$vm_name" details
exe "VBoxManage guestproperty enumerate $vm_name"

h2 Trying to connect by ssh
VM_IP=$(VBoxManage guestproperty get "$vm_name" '/VirtualBox/GuestInfo/Net/0/V4/IP' | grep -oP '(?<=Value: )(\d{1,3}\.){3}\d{1,3}')
exe "ssh $user@$VM_IP"

end