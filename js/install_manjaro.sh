#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

sudo pacman -Syu
sudo pacman -S nodejs npm


node --version
npm --version
sudo npm install -g yarn
yarn --version
sudo yarn global add @vue/cli
vue --version

