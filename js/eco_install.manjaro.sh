#!/bin/bash
############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
. exe.lib

h1 JavaScript Eco System Installing

h2 Installing nodejs npm
add nodejs npm

h2 Showing node, npm versions
exe "node --version; npm --version" -n

h2 Installing nvm
exe "wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash"


h2 Run nvm and setup node version in additional Terminal window
exe "chmod 700 setup.sh; urxvt -e ./setup.sh"

h2 restarting bash
exec bash