#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

dir=$PWD

# Update the system package database and upgrade packages
sudo pacman -Syyu

# Install Festival and only US English voices
sudo pacman -S festival festival-us

ln -s $PWD/festivalrc ~/.festivalrc
