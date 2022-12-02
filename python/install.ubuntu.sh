#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install and setup python for ubuntu                        #
############################################################################

echo Installing python 3.11
sudo apt update
sudo apt upgrade -y

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
python --version
echo python3
python3 --version


echo Any key for install pip and pip-review
read -n1 anykey

echo Installing and updating pip...
. pip_install.sh

echo Done!




