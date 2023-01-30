#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Creating slink for i3 uxrvt.Xresources config

ln -sfv $PWD/urxvt.Xresources $HOME/.Xresources
ls -la $HOME
readlink $HOME/.Xrexources
echo Done!


