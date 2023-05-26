#!/bin/bash
. colors.sh

echo "# Python install & setup tool #"
echo "Update and upgrade system and packages ..."

bash update.sh

echo "Checking for installing versions ..."
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
python -m pip install --upgrade pip
python -m pip --version

echo Anykey for install and setting pip-review
read anykey
echo installing pip-review ...
python -m pip install pip-review
pip-review --auto
echo -e "Done! $cn"
