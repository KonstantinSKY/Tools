#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install Virtual Box for Manjaro                            #
############################################################################

echo Updating systen official repo...
sudo pacman -Syu

echo Installing Virtual box
sudo pacman -Syy virtualbox
