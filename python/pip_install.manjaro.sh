#!/bin/bash
. colors.sh

echo_g "# Python install & setup tool #"
echo_g "Update and upgrade system and packages ..."

bash update.sh

echo_g "Checking for installing versions ..."
echo Python:
python -V
echo pip:
python -m ensurepip --upgrade
python -m pip --version

echo Anykey for install and upgrade python pip
read anykey
echo Installing pip ...
pacman -S python-pip
python -m pip --version
echo Upgrading pip...
python -m pip install --upgrade pi
python -m pip --version

echo Anykey for install and setting pip-review
read anykey
echo installing pip-review ...
python -m pip install pip-review
pip-review --auto
echo -e "Done! $cn"
