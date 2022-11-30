!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install megacmd for ubuntu server                          #
############################################################################

inst_file=$PWD/megacmd.deb
echo $inst_file

 echo Updatind Linux system ...
sudo apt update
sudo apt upgrade

 echo Installing megacmd for comand line ...
 echo Checking linux version

 lsb_release -a

echo Getting instalation file
echo Will gett file for https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megacmd-xUbuntu_22.04_amd64.deb
echo Anykey if u wanna to continue instalation file
read anykey

wget https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megacmd-xUbuntu_22.04_amd64.deb -O $inst_file

sudo apt install $inst_file

echo Removing $inst_file
rm $inst_file

echo Done!

