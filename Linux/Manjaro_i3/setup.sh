#!/bin/bash

############################################################################
# Script name : first_setup.sh               Date   : 10/02/22             #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Add env vars and my rc part to bashrc and to others ..rs fi#
############################################################################

# shellcheck disable=SC1091
source "$HOME"/.exe

# dir
packages=$TOOLS_PATH/packages/Manjaro
# Scripts

h1 MANJARO I3 FULL SETUP

h2 Running creating links script
exe "bash create_links.sh"

h2 Runnung Script for Setting System Time
exe "bash set_time.sh"

h2 Running Updating Repozitory Mirrors
exe "bash $packages/mirrors.sh"

removing_list="bmenu pacui pcmanfm mupdf tesseract"
h2 Running Script for Remove unused and unneeded packages: "$removing_list"
exe "bash $packages/remove.sh $removing_list"

h2 Pacman system update
exe "sudo pacman -Syu"

h2 BackingUp and Removing .bash_profile
backup .bash_profile
rm .bash_profile

h2 Installing Trash-CLI
exe "sudo pacman -S trash-cli --noconfirm"

h2 Installing Materia GTK Theme
exe "sudo pacman -S materia-gtk-theme --noconfirm"

h2 Installing Manjaro Setting Manager
exe "sudo pacman -S manjaro-settings-manager --noconfirm"

h2 Installing grub-update
exe "sudo pacman -S update-grub --noconfirm"

h1 Linux Kernel
h2 Running manjaro-serring manager for checking and reinstall if needed
manjaro-settings-manager &

h2 GRUB SETTING
GRUB_CONFIG="/etc/default/grub"

h2 Showing $GRUB_CONFIG -n
show $GRUB_CONFIG

h2 Changing GRUB_TIMEOUT_STYLE to 'menu'
exe "sudo sed -i 's/^GRUB_TIMEOUT_STYLE=.*$/GRUB_TIMEOUT_STYLE=menu/' $GRUB_CONFIG"

h2 Showing updated $GRUB_CONFIG
show $GRUB_CONFIG

h2 Update GRUB to apply the changes
exe "sudo update-grub"
end

h1 Packages INSTALLATION and UPDATE
h2 Running Enabling AUR script
exe "bash $packages/aur.sh"

h2 Running Updating System Packages
exe "bash $packages/update.sh"

# Install and Setup Application
collection="$packages/first.list"
h2 Installing first required package collection from "$collection"
exe "bash $packages/install.sh $collection"

h2 SSH

h2 Git ana GH_cli

h2 Pass setting

h2 Megasync

h2 Security and Pass

h2 SSH

h2 Git

h2 Fonts

h2 Python

h2 JavaScript

h2 Installing Packages

h2 Installing Others

end
