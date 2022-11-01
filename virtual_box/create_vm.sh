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
videoram=128
graphcontr=vboxsvga
accel3D=on
iso_file=~/Downloads/manjaro-kde.iso

#vms_directory=~/VirtualBox VMs/

echo Checking virtual machine list...
VBoxManage list vms

echo Checking iso file existence...
if [ ! -f $iso_file ];
	then 
		echo $iso_file is not existing
		echo Start imposible
		exit
fi 

read -p "Any key for continue to create VM : " any_key

echo Creating VM $vm_name ...
VBoxManage createvm --name $vm_name --register

echo Creating brige interface for net adapter...
VBoxManage modifyvm $vm_name --nic1 bridged --bridgeadapter1 eno2 --nictype1 82540EM --cableconnected1 on

echo Choosing Virtual machine OS Type...
VBoxManage modifyvm $vm_name --ostype $os_type

echo Setup $memory of memory... 
VBoxManage modifyvm $vm_name --memory $memory

echo Setup video memory to $videoram
VBoxManage modifyvm $vm_name --vram $videoram

echo Setup graphic controller to $graphcontr
VBoxManage modifyvm $vm_name --graphicscontroller=$graphcontr
echo Setup 3D acceleration = $accel3D
VBoxManage modifyvm $vm_name --accelerate3d=$accel3D

dir=`VBoxManage showvminfo $vm_name | grep "Config file"`
dir="/${dir#*/}"
dir="${dir%/*}/"
echo $dir
cd "$dir"
hdd_file="$dir$vm_name.vdi"


echo Creating HDD $hdd_file with size = $hdd_size ...
VBoxManage createhd --filename "$hdd_file" --size $hdd_size
ls 

echo Adding IDE controller ...
VBoxManage storagectl $vm_name --name "IDE Controller" --add ide

echo Connecting HDD to IDE controller...
VBoxManage storageattach $vm_name --storagectl "IDE Controller"  --port 0 --device 0 --type hdd --medium "$hdd_file"

echo Connecting ISO file...

VBoxManage storageattach $vm_name --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium $iso_file


VBoxManage showvminfo $vm_name 
read -p "Any key for continue to START VM : " any_key
echo Starting VM...
VBoxManage startvm $vm_name
