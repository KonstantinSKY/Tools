#!/bin/bash

############################################################################
# Script name : create_vm.sh                 Date   : 11/01/22             #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Create and setup virtual machine in Virtual box            #
############################################################################

vm_name=Manjaro_KDE
os_type=Linux_64
hdd_size=50000
memory=8192

#vms_directory=~/VirtualBox VMs/

echo Checking virtual machine list...
VBoxManage list vms

read -p "Any key for continue to create VM : " any_key

echo Creating VM $vm_name ...
VBoxManage createvm --name $vm_name --register

echo Creating brige interface for net adapter...
VBoxManage modifyvm $vm_name --nic1 bridged --bridgeadapter1 eno2 --nictype1 82540EM --cableconnected1 on

echo Choosing Virtual machine OS Type...
VBoxManage modifyvm $vm_name --ostype $os_type

dir=`VBoxManage showvminfo $vm_name | grep "Config file"`
dir="/${dir#*/}"
dir="${dir%/*}/"
# echo $dir

echo Setup $memory of memory 
VBoxManage modifyvm $vm_name --memory $memory

echo Creating HDD $dir$vm_name.vdi with size = $hdd_size ...
VBoxManage createhd --filename "$dir$vm_name.vdi" --size $hdd_size

cd $dir
ls 

VBoxManage showvminfo $vm_name

echo Adding IDE controller

VBoxManage storagectl $vm_name --name "IDE Controller" --add ide
