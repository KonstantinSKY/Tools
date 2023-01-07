#!/bin/bash
#

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install megasync and megacmd for Manjaro Linux             #
############################################################################

echo Setting megacmd
read -p "Login: " login
read -p "Password: " -s password


mega-login $login $password
mega-whoami
echo Remote directories:
mega-ls

echo 'Use "mega-sync" command to add syncing directory pairs'
echo mega-sync [local_directory] [remote directory]
echo After use mega-sync one more time without arguments
echo
echo "USE https://github.com/meganz/MEGAcmd/blob/master/UserGuide.md"


echo Done!
