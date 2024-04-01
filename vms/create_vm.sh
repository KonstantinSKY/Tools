#!/bin/bash
############################################################################
# Script name : create_vm.sh                 Date   : 11/01/22             #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Create and setup virtual machine in Virtual box            #
############################################################################

source ~/Tools/exe.sh

iso_file="${vm_directory}/${vm_name}/${image_link##*/}"

start "$0"
h1 "CREATE VIRTUAL BOX Machine"

#message="No config file as argument"
#exit_if_not $config_file
#exit_if_not_file $config_file
#conf=$PWD/$1
#. $conf
h2 "Config parameters:"
echo VM Directory: "$vm_directory"
echo Virtual machine name: "$vm_name"
echo OS Type: "$os_type"
echo HDD size: "$hdd_size"
echo RAM memory: "$memory"
echo Video RAM: "$videoram"
echo Graphic Controller: "$graphcontr"
echo 3D Accelerator: "$accel3D"
echo ISO File: "$iso_file"

exit_if_not "$vm_name" "No Virtual mashine name in config" 

h2 "Creating and Checking Virtual Machine Directory"
exe "mkdir -p $vm_directory && ls -la $vm_directory;"

h2 Setting Default Virtual Machine Directory to "$vm_directory"
exe "VBoxManage setproperty machinefolder $vm_directory"

h2 Checking Vbox properties
exe "VBoxManage list systemproperties"

h2 Checking virtual machine list
exe "VBoxManage list vms"

h2 Creating Virtual Machine "$vm_name"
exe "VBoxManage createvm --name $vm_name --register"

h2 List Virtual machine "$vm_name" directory
cd "$vm_directory"/"$vm_name" || exit
ls -la

mv_to_old "$iso_file"

h2 Downloading ISO file
exe "wget $image_link && echo; ls -la $iso_file"

h2 Checking ISO file "$iso_file" existence
exit_if_not_file "$iso_file"

h2 Creating brige interface for net adapter
exe "VBoxManage modifyvm $vm_name --nic1 bridged --bridgeadapter1 eno2 --nictype1 82540EM --cableconnected1 on"

h2 Choosing Virtual machine OS Type
exe "VBoxManage modifyvm $vm_name --ostype $os_type"

h2 Setup "$memory" of memory
exe "VBoxManage modifyvm $vm_name --memory $memory"

h2 Setup video memory to "$videoram"
exe "VBoxManage modifyvm $vm_name --vram $videoram"

h2 Setup graphic controller to "$graphcontr"
exe "VBoxManage modifyvm $vm_name --graphicscontroller=$graphcontr"

h2 Setup 3D acceleration = "$accel3D"
exe "VBoxManage modifyvm $vm_name --accelerate3d=$accel3D"

hdd_file="$vm_directory/$vm_name/$vm_name.vdi"

h2 Creating HDD "$hdd_file" with size = "$hdd_size" ...
exe "VBoxManage createhd --filename ""$hdd_file"" --size $hdd_size ;  ls -la"

h2 Adding IDE controller
exe "VBoxManage storagectl $vm_name --name 'IDE Controller' --add ide"

h2 Connecting HDD to IDE controller
exe "VBoxManage storageattach $vm_name --storagectl 'IDE Controller'  --port 0 --device 0 --type hdd --medium $hdd_file && ls -la"
pwd

h2 Connecting ISO file
exe "VBoxManage storageattach $vm_name --storagectl 'IDE Controller' --port 1 --device 0 --type dvddrive --medium $iso_file"

h2 Enabling clipboard to both directional
exe "VBoxManage modifyvm $vm_name --clipboard-mode bidirectional"

h2 Showing VM information
exe "VBoxManage showvminfo $vm_name"

h2 Starting VM
exe "VBoxManage startvm $vm_name"

end "$0"
