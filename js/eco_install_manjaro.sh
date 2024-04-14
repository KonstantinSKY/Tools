#!/bin/bash
############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
source "$EXE"
start "$0"

h2 "Update and upgrade system packages"
exe "sh $upd"

h2 Instaling NodeJS and npm from Manjaro repository
exe "sudo pacman -S nodejs npm"

h2 Showing node, npm, nvm versions
exe "node --version; npm --version, nvm ---version" -n

h2 Showing available Node remote LTS versions
exe "nvm ls-remote --lts"

h2 Instaling NodeJS latest LTS version and showing all installed versions
exe "nvm install -LTS; nvm ls; echo 'Current activated version:'; nvm current"

h2 Uninstalling NodeJS version script
exe nvm uninstall $result




sudo npm install -g yarn
yarn --version
sudo yarn global add @vue/cli
vue --version

end "$0"
