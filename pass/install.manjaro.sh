#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Setup password manager for manjaro                         #
############################################################################

. $HOME/.exe

packages=$TOOLS_PATH/packages/Manjaro
#scripts
import_keys=$HOME/Work/Security/import_gpg_keys.sh   

H1 pass Installation and setting

h2 Installing GnuPG  application
exe "bash $packages/install gnupg"


h2 Installing GnuPG  application
exe "bash $packages/install pass && pas version"


h2 Importing Keys
exe  "bash $import_keys"

h2 List GnuPG Privat and Public Keys
exe "gpg --list-keys; gpg --list-secret-keys"



