#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

. exe.lib

i3=$HOME/.i3
CP=$CONFIGS_PATH
TP=$TOOLS_PATH
BIN=$HOME/.local/bin

h1 Manjaro i3 Create symbolik links for Configs

h2 Editing global i3 config for removing config wizzard
backup /etc/i3/config --sudo
exe "sed -i 's/exec i3-config-wizard//g' /etc/i3/config" --sudo

h2 Creating .i3 directory for configs if absent
exe "mkdir -vp $i3; la -la $i3"

slink "$CP/i3.cfg" "$i3/config" "i3 config"

slink "$CP/i3.profile" "$HOME/.profile" ".profile"

# slink "$CP/bash_prfle" "$HOME/.profile" ".profile"

slink "$CP/mimeapps.list.cfg" "$HOME/.config/mimeapps.list" "mimeapps.list"

#Gtk
# slink "$CP/gtkrc-2.cfg" "$HOME/.gtkrc-2.0" "gtk-2 config"
# slink "$CP/gtk-3.settings.ini" "$HOME/.config/gtk-3.0/settings.ini" "gtk-3 config"

#Qt
slink "$CP/qt5ct.conf" "$HOME/.config/qt5ct/qt5ct.conf" "Qt5 config"

#urxvt terminal
slink "$CP/urxvt.Xresources.cfg" "$HOME/.Xresources" "URxvt terminal config"

h1 commands
slink "$TP/packages/Manjaro/install.sh" "$BIN/add" "Install command"
slink "$TP/packages/Manjaro/remove.sh" "$BIN/uninstall" "Uninstall command"
slink "$TP/git/commit.sh" "$BIN/commit" "Commit Command"

h1 Change mode for all "$BIN"
exe "chmod 700 $BIN/*"

h1 Fonts
slink "$CP/fonts" "$HOME/.local/share/fonts" "Fonts Directory"

h2 Remove previous cache
exe "rm -rf ~/.cache/fontconfig/*"

h2 Updating fonts cache
exe "fc-cache -fv $HOME/.local/share/fonts"

h1

#h2 Creating symbolic link for .pylintrc
#exe "ln -sfv $PWD/pylintrc $HOME/.pylintrc && readlink $HOME/.pylintrc"

#h2 Creating symbolic link for .ideavimrc config ...
#exe "ln -sfv $PWD/ideavimrc $HOME/.ideavimrc readlink $HOME/.config/.ideavimrc"

end
