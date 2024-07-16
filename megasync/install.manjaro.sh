#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install megasync and megacmd for Manjaro Linux             #
############################################################################
. exe.lib

h1 Megasync CMD Setup
packages=$TOOLS_PATH/packages/Manjaro

h1 Magasync
run "$packages/install.sh megacmd && mega-version" "MegaSync megacmd Installing"

login() {
    local login=""
    local password=""
    read -r -p "Enter Login: " login
    read -r -p "Enter Password: " password
    mega-login "$login" "$password"
}

h2 Login in
login || end
mega-whoami

h2 List of all active sync configuration
exe mega-sync

h2 Sync Security folder
exe "mega-sync ~/Work/Security /Security && mega-sync"


end
