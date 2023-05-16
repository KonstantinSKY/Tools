#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
mkdir -p ~/.local/share/fonts
chmod 644 ~/.local/share/fonts/*.ttf
fc-cache -fv
fc-cache -fv *
