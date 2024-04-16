#!/bin/bash
. "$EXE"

#Dirctories
WORK=$HOME/Work
CP=$CONFIGS_PATH
TP=$TOOLS_PATH

h1 System checking

h2 Checking ENV

echo "User Name: $USER_NAME"  
echo "EMAIL: $EMAIL"  

h2 Checking symlinks
#Dirs
check_link "$HOME"/Configs "$CP"
check_link "$HOME"/Tools "$TP"
check_link "$HOME"/Projects "$WORK"/Projects
check_link "$HOME"/Security "$WORK"/Security
check_link "$HOME"/BackUps "$WORK"/BackUps
check_link "$HOME"/Documents "$WORK"/Documents
check_link "$HOME"/Downloads "$WORK"/Downloads
check_link "$HOME"/Pictures "$WORK"/Pictures
check_link "$HOME"/Videos "$WORK"/Videos
check_link "$HOME"/Obsidian "$WORK"/Obsidian
check_link "$HOME"/VirtualBox_VMs "$WORK"/VirtualBox_VMs
check_link "$HOME"/Music "$WORK"/Music
check_link "$HOME"/.password-store "$WORK"/.password-store
check_link "$HOME"/.ssh "$WORK"/Security/ssh

#files
check_link "$HOME"/.exe "$TP"/exe.sh
check_link "$HOME"/.i3/config "$CP"/i3.cfg
check_link "$HOME"/.profile "$CP"/i3.profile
check_link "$HOME"/.ideavimrc "$CP"/ideavimrc
check_link "$HOME"/.pylintrc "$CP"/pylintrc
check_link "$HOME"/.Xresources "$CP"/urxvt.Xresources.cfg
check_link "$HOME"/.config/mimeapps.list "$CP"/mimeapps.list.cfg
check_link "$HOME"/.config/qt5ct/qt5ct.conf "$CP"/qt5ct.conf
#check_link "$HOME"/.config/gtk-3.0/settings.ini "$CP"/gtk-3.0/settings.ini
#check_link "$HOME"/.config/kdeglobals "$CP"/kdeglobals.cfg
#check_link "$HOME"/.config/kdeglobals "$CP"/kdeglobals.cfg


h2 Checking Installed packages
check_installed google-chrome
check_installed firefox


h2 Checking Uninstalled packages
check_uninstalled palemoon
check_uninstalled vim
