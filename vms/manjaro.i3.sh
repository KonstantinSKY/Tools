
echo Manjaro i3 virtual machine creator

image_link="https://download.manjaro.org/i3/23.0.1/manjaro-i3-23.0.1-minimal-230921-linux65.iso"


vm_directory="$HOME/Work/VirtualBox_VMs"

vm_name=Manjaro_i3
os_type=Linux_64
hdd_size=50000
memory=8192
videoram=128
graphcontr=vmsvga
accel3D=on

source create_vm.sh


