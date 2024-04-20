#!/bin/bash
############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
. exe.lib

#scripts
# nvm=$TOOLS_PATH/js/nvm.sh

h1 JavaScript Eco System Installing

h2 Installing nodejs npm
add nodejs npm

h2 Showing node, npm versions
exe "node --version; npm --version" -n

h1 NVM
h2 Installing nvm
exe "wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash"

#NVM BLOCK

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion (optional)

h1 NODE VERSIONS
h2 Node remote LTS versions
exe "nvm ls-remote --lts"

h2 Node Installed versions
exe "nvm ls"

h2 Instaling NodeJS latest LTS version, switch to and showing all installed versions
exe "nvm install --lts; nvm use --lts"

h2 Node Installed versions
exe "nvm ls" -n
h2 'Current activated version:'
exe "nvm current" -n

h2 Uninstalling NodeJS version
read -p "Enter version number to install or Empty to Cancel: " -r number
if [ -n "$number" ]; then
    exe "nvm uninstall $number"
fi
h1 NPM
h2 Checking npm version for update
exe "npm -g outdated npm"

h2 Update npm for latest version
exe "npm install -g npm@latest; npm --version"

h1 Yarn
h2 Installing Yarn
exe "sudo npm install --global yarn; yarn --version"

h2 "Installing vue-cli globally (no need if you want to use vite)"
exe "sudo yarn global add @vue/cli; vue --version"
end
