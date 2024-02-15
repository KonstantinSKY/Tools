#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

source ~/Tools/exe.sh

echo pyenv setting script
pyenv --version

echo checking availiable version...
exe "pyenv install -l"
echo cheking
