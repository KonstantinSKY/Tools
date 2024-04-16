#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Setup password manager for manjaro                         #
############################################################################

. "$EXE"

packages=$TOOLS_PATH/packages/Manjaro

#Directories
link_store="$HOME"/.password-store
source_store="$HOME"/Work/.password-store

#scripts
import_keys=$HOME/Work/Security/import_gpg_keys.sh

h1 pass Installation and setting

h2 Installing GnuPG application
exe "bash $packages/install.sh gnupg"

h2 Installing GnuPG application
exe "bash $packages/install.sh pass && pass version"

h2 Importing Keys
exe "bash $import_keys"

h2 List GnuPG Privat and Public Keys
exe "gpg --list-keys; gpg --list-secret-keys; gpg --check-trustdb"

h2 Creating store directory: "$source_store"
exe "mkdir -p $source_store && ls -la $source_store"

h2 Cloning .password-store
exe "git clone git@gitlab.com:sky012877/Password-store.git $source_store"

slink "$source_store" "$link_store"

h2 Checking pass util
exe "pass"

end