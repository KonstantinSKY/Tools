#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
echo Installing fonts...
dir="$HOME/.local/share/fonts"

mkdir -p $dir
cp *.ttf $dir
chmod 644 $dir/*.ttf
ls $dir
fc-cache -fv
fc-cache -fv *
