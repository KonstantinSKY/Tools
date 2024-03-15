#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install Virtual Box for Manjaro                            #
############################################################################

source ~/Tools/exe.sh
start $0

h1 INSTALL VIRTUAL BOX

h2 Updating systen official repo
exe "sudo pacman -Syu"

h2 Checking system kernel
echo Your kernel version is :
exe "mhwd-kernel -li"

h2 Installing Virtual box
exe "sudo pamac install virtualbox"

h2 installing extention pack
exe "sudo pamac install virtualbox-ext-oracle"

h2 Adding user to virtualboxusers
exe "sudo usermod -aG vboxusers sky"

h2 showing
grep vboxusers /etc/group

h2 Done. Rebooting system ...
exe "sudo reboot"

#echo You can need to install VM package for you Linux kernel
#mhwd-kernel -li

#echo Installing additional module ...
#sudo pamac install virtualbox-ext-oracle
#echo sudo pacman -Syu virtualbox linuxXX-virtualbox-host-modules
#sudo vboxreload
#echo 'see https://wiki.manjaro.org/index.php/VirtualBox#Installing_Virtualbox_on_Manjaro'

end $0
