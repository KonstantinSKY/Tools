#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

. colors.sh
passw=/etc/passwd

echo -e "$cg Create new non admin user $cn"
echo Existing users in $passwd
cat $passwd

echo -e "$cv Enter the user name: $cn"
read username

sudo useradd -m -s /bin/bash $username
cat $passwd | grep $username
echo Home directory:
ls /home/

echo -e "$cv Enter user password: $cn"
sudo passwd $username



