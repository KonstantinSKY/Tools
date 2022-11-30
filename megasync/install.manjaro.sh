#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install megasync and megacmd for Manjaro Linux             #
############################################################################

echo Updatind Linux system ...
upd
echo Installing megasync for desktop ...
sudo pamac install megasync-bin

echo Installing megacmd for comand line ...
sudo pamac install megacmd

echo Done!

