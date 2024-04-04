#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install and setup python for manjaro                       #
############################################################################

source ~/Tools/exe.sh


echo pyenv checking version if already installed ...
pyenv --version

echo "installing Xcode Command Line Tools ..."
exe "sudo pacman -S --needed --noconfirm base-devel openssl zlib xz tk"

echo "Instaling pyenv ..."
exe "git clone https://github.com/pyenv/pyenv.git ~/.pyenv"

echo Please check all setting to rc files.
echo "Checking pyenv version in system"
exe "source ~/.bashrc; pyenv --version"



echo pyhenv setting  ..
exe "sh ~/Tools/python/pyenv.sh"


