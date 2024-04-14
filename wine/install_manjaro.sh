#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Installing wine to Manjaro linux

sudo pacman -Syu

sudo pacman -S wine winetricks wine-mono wine_gecko

sudo pacman -S wine-staging

wine --version

echo Done
