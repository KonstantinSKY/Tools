#!/bin/bash
############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
. exe.lib

term=urxvt

#scripts
nvm=$TOOLS_PATH/js/nvm.sh

h1 JavaScript Eco System Installing

h2 Installing nodejs npm
add nodejs npm

h2 Showing node, npm versions
exe "node --version; npm --version" -n

h2 Installing nvm
exe "wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash"


h2 Run nvm and install/uninstall node version in additional Terminal window
# exe "chmod 700 $nvm; $term -e ./$nvm &"
run "$nvm" "install/uninstall"

h2 Installing Yarn
exe "sudo npm install --global yarn; yarn --version"

h2 "Installing vue-cli globally (no need if you want to use vite)"
exe "sudo yarn global add @vue/cli; vue --version"

h2 restarting bash
exec bash