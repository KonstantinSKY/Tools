#!/bin/bash

############################################################################
# Script name : create_vm.sh                 Date   : 11/01/22             #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Create and setup virtual machine in Virtual box            #
############################################################################


source ~/Tools/exe.sh
start $0
h1 "CREATE VIRTUAL BOX Machine"
#dir=pwd

#iso_file=${dir}/$

iso_file="${vm_directory}/${vm_name}/${image_link##*/}"


#message="No config file as argument"
#exit_if_not $config_file
#exit_if_not_file $config_file
#conf=$PWD/$1
#. $conf
h2 "Config parameters"
echo VM Directory: $vm_directory
echo Virtual machine name: $vm_name
echo OS Type: $os_type
echo HDD size: $hdd_size
echo RAM memory: $memory
echo Video RAM: $videoram
echo Graphic Controller: $graphcontr
echo 3D Accelerator: $accel3D
echo ISO File: $iso_file
echo

message="No Virtual mashine name in config"
exit_if_not $vm_name


h2 "Creating and Checking Virtual Machine Directory"
exe "mkdir -p $vm_directory && ls -la $vm_directory;"

echo Setting Default Virtual Machine Directory to $vm_directory ...
exe "VBoxManage setproperty machinefolder $vm_directory"

echo Checking Vbox properties ...
exe "VBoxManage list systemproperties"


echo Checking virtual machine list...
exe "VBoxManage list vms"

echo Creating Virtual Machine $vm_name ...
exe "VBoxManage createvm --name $vm_name --register"

cd $vm_directory/$vm_name; ls -la

mv_to_old $iso_file

echo Downloading ISO file ...
download_or_exit $image_link && ls -la $iso_file

echo Checking ISO file  $iso_file existence...
exit_if_not_file $iso_file

echo Creating brige interface for net adapter...
exe "VBoxManage modifyvm $vm_name --nic1 bridged --bridgeadapter1 eno2 --nictype1 82540EM --cableconnected1 on"

echo Choosing Virtual machine OS Type...
exe "VBoxManage modifyvm $vm_name --ostype $os_type"

echo Setup $memory of memory...
exe "VBoxManage modifyvm $vm_name --memory $memory"

echo Setup video memory to $videoram
exe "VBoxManage modifyvm $vm_name --vram $videoram"

echo Setup graphic controller to $graphcontr
exe "VBoxManage modifyvm $vm_name --graphicscontroller=$graphcontr"

echo Setup 3D acceleration = $accel3D
exe "VBoxManage modifyvm $vm_name --accelerate3d=$accel3D"

hdd_file="$vm_directory/$vm_name/$vm_name.vdi"

echo Creating HDD $hdd_file with size = $hdd_size ...
exe "VBoxManage createhd --filename "$hdd_file" --size $hdd_size ;  ls -la"

echo Adding IDE controller ...
exe "VBoxManage storagectl $vm_name --name 'IDE Controller' --add ide"

echo Connecting HDD to IDE controller...
exe "VBoxManage storageattach $vm_name --storagectl 'IDE Controller'  --port 0 --device 0 --type hdd --medium $hdd_file && ls -la"
pwd
echo Connecting ISO file...
exe "VBoxManage storageattach $vm_name --storagectl 'IDE Controller' --port 1 --device 0 --type dvddrive --medium $iso_file"

echo Showing VM information...
exe "VBoxManage showvminfo $vm_name"

echo Starting VM...
exe "VBoxManage startvm $vm_name"

end $0

