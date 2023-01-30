#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Setup konsole terminal                                     #
############################################################################
dir_from=$(realpath $(dirname $0))

echo Start from directory: $dir_from
dir_to=$HOME/.local/share/konsole

echo Creating symlinks...
ln -s $dir_from/bash.profile $dir_to/bash.profile
ln -s $dir_from/zsh.profile $dir_to/zsh.profile
ln -s $dir_from/K_zsh.profile $dir_to/K_zsh.profile
echo Created in $dir_to:
ls  $dir_to/

