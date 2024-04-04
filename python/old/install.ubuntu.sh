#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install and setup python for ubuntu                        #
############################################################################
path=$PWD
echo Installing python 3.11
. upd.sh

sudo apt install python3.11 -y

echo list of installed Python alternatives in /usr/bin/
ls /usr/bin | grep python
list=($(ls /bin/ | grep python))

for variant in ${list[@]}
	do
		echo Start Version for : $variant
		$variant --version
	done

echo Anykey to update alternatives foe exex interpeter
read -n1 anykey

sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.11 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1


echo Checking python exec...
echo python
python --version
echo python3
python3 --version


echo Any key for install pip:
read -n1 anykey

echo Installing pip ...
sudo apt install python3-pip
pip3 --version
python -m pip install --upgrade pip

echo Any key for install pip-review:
read anykey

. $path/pip_install.sh

echo Done!




