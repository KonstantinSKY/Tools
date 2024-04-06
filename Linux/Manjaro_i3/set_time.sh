#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Setting system clock auto sync...
sudo timedatectl set-ntp true
timedatectl status
echo Done!
