#!/bin/bash

############################################################################
# Script name : first_setup.sh               Date   : 10/02/22             #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Add env vars and my rc part to bashrc and to others ..rs fi#
############################################################################

# shellcheck disable=SC1091
. exe.lib

# dir
packages=$TOOLS_PATH/packages/Manjaro
# Scripts

h1 MANJARO I3 SETUP

run "bash create_links.sh" "Create symbolic links"

run "bash set_time.sh" "System Time Setting" 

run "bash $packages/mirrors.sh" "Repozitory Mirrors Updaiting"

removing_list="bmenu pacui pcmanfm mupdf tesseract"
h2 Running Script for Remove unused and unneeded packages: "$removing_list"
run "$packages/remove.sh $removing_list" "Unneeded Packages removing"

h2 Pacman system update
exe "sudo pacman -Syu"

h2 BackingUp and Removing .bash_profile
backup "$HOME"/.bash_profile
h2 Deleting "$HOME"/.bash_profile
exe "rm $HOME/.bash_profile"

h2 Installing Trash-CLI
exe "sudo pacman -S trash-cli --noconfirm"

h2 Installing Materia GTK Theme
exe "sudo pacman -S materia-gtk-theme --noconfirm"

h2 Installing Manjaro Setting Manager
exe "sudo pacman -S manjaro-settings-manager --noconfirm"

h2 Installing update-grub
exe "sudo pacman -S update-grub --noconfirm"

h1 Linux Kernel
h2 Running manjaro-serring manager for checking and reinstall if needed
manjaro-settings-manager &

h1 GRUB SETTING
GRUB_CONFIG="/etc/default/grub"

h2 Showing $GRUB_CONFIG -n
show $GRUB_CONFIG

h2 Changing GRUB_TIMEOUT_STYLE to 'menu'
exe "sudo sed -i 's/^GRUB_TIMEOUT_STYLE=.*$/GRUB_TIMEOUT_STYLE=menu/' $GRUB_CONFIG"

h2 Showing updated $GRUB_CONFIG
show $GRUB_CONFIG

h2 Update GRUB to apply the changes
exe "sudo update-grub"

h1 Reboot system IF Nessesary   
h2 Rebooting system...
exe "sudo reboot"

end

