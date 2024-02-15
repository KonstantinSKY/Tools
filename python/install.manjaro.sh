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
echo

echo Python versions and which:
python --version
which pyhton
echo

echo "System updating ..."
exe "sudo pacman -Syu"


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


echo pip instalation
pip --version
echo Installing pip ...
exe "python -m ensurepip --upgrade; pip --version"

echo pipx instalation
pipx --version
echo Installing pipx ...
exe "sudo pacman -Sy --needed --noconfirm python-pipx; echo "pipx version"; pipx --version"
echo
echo poetry instalation
poetry --version
echo
exe "pipx install poetry"

echo FINISHED
