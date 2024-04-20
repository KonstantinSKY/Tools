#!/bin/bash
############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
. exe.lib

h1 JavaScript Eco System Installing and setting

h2 Installing nodejs npm
add nodejs npm


h2 Showing node, npm versions
exe "node --version; npm --version" -n

h2 Installing nvm
exe "wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash"

h2 Restart System
su "$USER"

h2 Showing available Node remote LTS versions
exe "nvm ls-remote --lts"

h2 Instaling NodeJS latest LTS version and showing all installed versions
exe "nvm install -LTS; nvm ls; echo 'Current activated version:'; nvm current"

h2 Uninstalling NodeJS version script
exe nvm uninstall

h2 Installing Yarn
exe "sudo npm install --global yarn; yarn --version"

h2 "Installing vue-cli globally (no need if you want to use vite)"
exe "sudo yarn global add @vue/cli; vue --version"

end
