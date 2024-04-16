#!/bin/bash

. "$EXE"

#Directories
packages=$TOOLS_PATH/packages/Manjaro

#Scripts
setup_megasync=$TOOLS_PATH/megasync/install.manjaro.sh
setup_pass=$TOOLS_PATH/pass/install.manjaro.sh
setup_ssh=$TOOLS_PATH/ssh/setuo.sh
setup_git=$TOOLS_PATH/git/setup.sh

h1 Manjaro I3 Setup 2

h1 Packages INSTALLATION and UPDATE
h2 Running Enabling AUR script
exe "bash $packages/aur.sh"

h2 Running Updating System Packages
exe "bash $packages/update.sh"

# Install and Setup Application
collection="$packages/first.list"
h2 Installing first required package collection from "$collection"
exe "bash $packages/install.sh $collection"

# kde global, default terminal for Dolpin 
slink "$CONFIGS_PATH/kdeglobals.cfg" "$HOME/.config/kdeglobals" "KDE Global for default terminal for Dolphin"
removing_list="palemoon vim"

h2 Running Script for Remove unused and unneeded packages: "$removing_list"
bash "$packages/remove.sh $removing_list"

h1 NeoVim
h2 Installing NeoVim

h1 Megasync
h2 Running Megasync Instalation Script
exe "bash $setup_megasync"

h2 Running Setup .ssh directory
exe "bash $setup_ssh"

h1 Git
h2 Running Setting Script for git
exe "bash $setup_git"

h1 Pass
h2 Running Setting Script for pass
exe "bash $setup_pass"


h1 Developing

h1 Virtual Machines

h1 Office


end
