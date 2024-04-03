#!/bin/bash
source "$EXE"
start "$0"

#Scripts
upd=$TOOLS_PATH/pkgs/upd.sh

h1 Pip Instalation

# echo "# Python install & setup tool #"
h2 "Update and upgrade system packages"
exe "sh $upd"

h2 "Checking for python installing version ..."
exe "python -V" -n


h2 Installing pip
exe "python -m ensurepip --upgrade; python -m pip --version"


echo Anykey for install and upgrade python pip
read -r anykey
echo Installing pip ...
pacman -S python-pip
python -m pip --version
echo Upgrading pip...
python -m pip install --upgrade pip
python -m pip --version

echo Anykey for install and setting pipx
read -r anykey
sudo pacman -S python-pipx

echo Anykey for install and setting pipenv
read anykey
pipx install pipenv

echo Anykey for install and setting pip-review
read anykey
echo installing pip-review ...
pipx install pip-review

echo Anykey for update python modules with pip-review
read anykey

pip-review --auto
echo -e "Done! $cn"
