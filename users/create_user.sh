#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

. colors.sh

echo -e "$cg Create new non admin user $cn"
cat /etc/passwd

echo -e "$cv Enter the user name $cn"
read username
sudo useradd -m -s /bin/bash $username
cat /etc/passwd

echo -e "$cv Enter user password $cn"
sudo passwd $username



