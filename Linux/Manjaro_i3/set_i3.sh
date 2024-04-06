#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

source "$EXE"
start "$0"

path=$HOME/.i3

h1 Manjaro i3 and eco system setup

h2 Editing global i3 config for removing config wizzard
exe "sudo sed -i 's/exec i3-config-wizard//g' /etc/i3/config"

h2 Creating .i3 directory for configs if absent
exe "mkdir -vp $path; la -la $path"

h2 Saving existiong config file to .old version
exe "[ -f $path/config ] && mv $path/config $path/config.old" -n

h2 Creating symbolik link for i3.config
exe "ln -sfv $PWD/i3.config $path/config && readlink $path/config; ls -la $path"

h2 Creating symbolic link for i3 .profile config
exe "ln -sfv $PWD/i3.profile $HOME/.profile && readlink $HOME/.profile"

h2 Creating symbolic link for i3 mimeapps.list profile config
exe "ln -sfv $PWD/mimeapps.list $HOME/.config/mimeapps.list && readlink $HOME/.config/mimeapps.list"

h2 Creating symbolic link for .pylintrc
exe "ln -sfv $PWD/pylintrc $HOME/.pylintrc && readlink $HOME/.pylintrc"

h2 Creating symbolic link for .ideavimrc config ...
exe "ln -sfv $PWD/ideavimrc $HOME/.ideavimrc readlink $HOME/.config/.ideavimrc"

end "$0"
