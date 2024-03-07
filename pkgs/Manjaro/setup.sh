#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Setup repos for packages                                   #
############################################################################

source ~/Tools/exe.sh
start $0

echo AUR SETUP

echo Cheking pamac config for AUR ...
exe "cat /etc/pamac.conf"


echo Enabling AUR and checking for updating AUR ...

exe "sudo sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf && sudo sed -Ei '/CheckAURUpdates/s/^#//' /etc/pamac.conf"

echo Cheking pamac config for AUR ...
exe "cat /etc/pamac.conf"



echo REPO MIRRORS UPDATE ...

echo Showing mirrors status ...
exe "pacman-mirrors --status"

echo Searching fast mirrors ...
exe "sudo pacman-mirrors --fasttrack"


echo Showing New status of mirrors pool ...
exe "pacman-mirrors --status"

end $0
