#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Creating slink for i3 .profile config
path=$HOME/.config/i3

ln -sfv $PWD/i3.profile $HOME/.profile
ls -la $HOME
readlink $HOME/.profile
echo Done!


