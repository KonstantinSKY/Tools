#!/bin/bash
. exe.lib

h1 JS Ecosystem setting

h2 Node remote LTS versions
nvm ls-remote --lts

h2 Node Installed versions
nvm ls

h2 Instaling NodeJS latest LTS version and showing all installed versions
echo "nvm install -LTS; nvm ls; echo 'Current activated version:'; nvm current"
read -p "Anykey to install last lts version or ctrl+z" -r anykey
nvm install -LTS

h2 Node Installed versions
nvm ls
h2 'Current activated version:'
nvm current

h2 Uninstalling NodeJS version
read -p "Enter version number to install" -r number
nvm uninstall "$number"

end
