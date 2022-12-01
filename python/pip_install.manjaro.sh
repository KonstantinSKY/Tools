#!/bin/bash
. colors.sh

echo_g "# Python install & setup tool #"
echo_g "Update and upgrade system and packages ..."

. /update.sh

echo_g "Checking for installing versions ..."
echo Python:
python -V
echo pip:
python -m pip --version

echo Anykey for install and upgrade python pip
read anykey
echo Installing pip ...
sudo pacman -S python-pip
python3 -m pip --version
echo Upgrading pip...
sudo pip install --upgrade pip
python3 -m pip --version

echo Anykey for install and setting pip-review
read anykey
echo installing pip-review ...
sudo pip install pip-review
pip-review --auto
echo -e "Done! $cn"
