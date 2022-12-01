#!/bin/bash
. colors.sh

echo_g "# Python install & setup tool #"
echo_g "Update and upgrade system and packages ..."
#sh update.sh

echo_g "Installed:"
python -V
echo_g "pip installing"
#python -m pip install
python -m pip --version


sudo pacman -S python-pip
python3 -m pip --version
#sudo pip install --upgrade pip
#sudo pip install pip-review
#pip-review --auto
echo -e "Done $cn"
