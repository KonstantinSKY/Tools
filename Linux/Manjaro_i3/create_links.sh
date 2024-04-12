#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

source "$EXE"
# start "$0"

#Directories
i3=$HOME/.i3
configs=$CONFIGS_PATH

#Files
i3_config_link=$i3/config
i3_config_src=$CONFIGS_PATH/i3.config.cfg

h1 Manjaro i3 Create symbolik links for Configs

h2 Editing global i3 config for removing config wizzard
exe "sudo sed -i 's/exec i3-config-wizard//g' /etc/i3/config"

h2 Creating .i3 directory for configs if absent
exe "mkdir -vp $i3; la -la $i3"

#h2 Saving existiong config file to .old version
#exe "[ -f $path/config ] && mv $path/config $path/config.old" -n
# backup "$i3_config_link"
slink "$i3_config_src" "$i3_config_link" "i3 config"

# h2 Creating symbolik link for i3.config
# slink $PWD/i3.config $path/config && readlink $path/config; ls -la $path"

slink "$configs/i3.profile" "$HOME/.profile" ".profile"

# h2 Creating symbolic link for i3 mimeapps.list profile config
slink "$configs/mimeapps.list.cfg" "$HOME/.config/mimeapps.list" "mimeapps.list"


#h2 Creating symbolic link for .pylintrc
#exe "ln -sfv $PWD/pylintrc $HOME/.pylintrc && readlink $HOME/.pylintrc"

#h2 Creating symbolic link for .ideavimrc config ...
#exe "ln -sfv $PWD/ideavimrc $HOME/.ideavimrc readlink $HOME/.config/.ideavimrc"

end
