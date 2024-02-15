#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install and setup python for manjaro                       #
############################################################################

source ~/Tools/exe.sh

echo Installing Python and Ecosystem to Manjaro Linux

echo Python3 versions and which:
python3 --version
which pyhton3

echo Python versions and which:
python --version
which pyhton


echo "System updating ..."
exe "sudo pacman -Syu"


echo pyenv ...
pyenv --version

echo "installing Xcode Command Line Tools ..."
exe "sudo pacman -S --needed --noconfirm base-devel openssl zlib xz tk"

echo "Instaling pyenv ..."
exe "sudo pacman -Sy pyenv --noconfirm; pyenv --version"


echo pyhenv setting  ..
exe "sh ~/Tools/python/pyenv.sh"


echo pip instalation
pip --version
echo Installing pip
exe "python -m ensurepip --upgrade; pip --version"

of all available versions
exe "pyenv install -l"

