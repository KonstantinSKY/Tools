#!/bin/bash
. exe.lib

term=urxvt

h1 JS Ecosystem setting 

h2 Showing available Node remote LTS versions
exe "nvm ls-remote --lts"

h2 Instaling NodeJS latest LTS version and showing all installed versions
exe "nvm install -LTS; nvm ls; echo 'Current activated version:'; nvm current"


h2 Run nvm and node version checking in additional Terminal window


h2 Uninstalling NodeJS version script
exe nvm uninstall

h2 Installing Yarn
exe "sudo npm install --global yarn; yarn --version"

h2 "Installing vue-cli globally (no need if you want to use vite)"
exe "sudo yarn global add @vue/cli; vue --version"

end