#!/bin/bash

. exe.lib

#Directories
packages=$TOOLS_PATH/packages/Manjaro

#Scripts
setup_megasync=$TOOLS_PATH/megasync/install.manjaro.sh
setup_pass=$TOOLS_PATH/pass/install.manjaro.sh
setup_ssh=$TOOLS_PATH/ssh/setuo.sh
setup_git=$TOOLS_PATH/git/setup.sh

h1 Manjaro I3 Setup 2

h1 Packages INSTALLATION and UPDATE
run "$packages/aur.sh" "Enabling AUR settings"

run "$packages/update.sh" "System Packages Updaiting"

# Install and Setup Application
collection="$packages/first.list"
run "$packages/install.sh $collection" "First Required Packages from: $collection"

# kde global, default terminal for Dolpin 
slink "$CONFIGS_PATH/kdeglobals.cfg" "$HOME/.config/kdeglobals" "KDE Global for default terminal for Dolphin"

removing_list="palemoon vim"
run "$packages/remove.sh $removing_list" "Unneeded Packages removing"

h1 NeoVim
h2 Installing NeoVim

h1 Megasync
run "$setup_megasync" "Megasync Instalation and Setup"

h1 ssh
run "$setup_ssh" ".ssh Directory Setup"

h1 Git
run "$setup_git" "Git Setup"

h1 Pass
run "$setup_pass" "Pass util setting"

h1 Developing

h1 Virtual Machines

h1 Office


end
