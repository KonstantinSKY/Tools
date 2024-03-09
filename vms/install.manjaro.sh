#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install Virtual Box for Manjaro                            #
############################################################################

source ~/Tools/exe.sh
start $0

echo INSTALL VIRTUAL BOX

echo Updating systen official repo...
exe "sudo pacman -Syu"

echo Checking system kernel...
echo Your kernel version is :
exe "mhwd-kernel -li"

echo Installing Virtual box...
exe "sudo pamac install virtualbox"

echo installing extention pack ...
exe "sudo pamac install virtualbox-ext-oracle"

echo Adding user to virtualboxusers ...
exe "sudo usermod -aG vboxusers sky"

echo showing
grep vboxusers /etc/group

echo Done. Rebooting system ...
exe "sudo reboot"

#echo You can need to install VM package for you Linux kernel
#mhwd-kernel -li

#echo Installing additional module ...
#sudo pamac install virtualbox-ext-oracle
#echo sudo pacman -Syu virtualbox linuxXX-virtualbox-host-modules
#sudo vboxreload
#echo 'see https://wiki.manjaro.org/index.php/VirtualBox#Installing_Virtualbox_on_Manjaro'

end $0
