#!/bin/bash
. exe.lib

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion (optional)

h1 JS Ecosystem setting

h2 Node remote LTS versions
exe "nvm ls-remote --lts"

h2 Node Installed versions
exe "nvm ls"

h2 Instaling NodeJS latest LTS version and showing all installed versions
# echo "nvm install -LTS; nvm ls; echo 'Current activated version:'; nvm current"
# read -p "Anykey to install last lts version or ctrl+z" -r anykey
exe "nvm install -LTS"

h2 Node Installed versions
nvm ls
h2 'Current activated version:'
nvm current

h2 Uninstalling NodeJS version
read -p "Enter version number to install or Empty to Cancel" -r number
exe "nvm uninstall $number"

end
