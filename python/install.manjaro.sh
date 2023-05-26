#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install and setup python for manjaro                       #
############################################################################

echo Installing Python 3.11
upd.sh
sudo pamac install mingw-w64-python311-bin


echo list of installed Python alternatives in /usr/bin/
ls /usr/bin | grep python
list=($(ls /bin/ | grep python))

for variant in ${list[@]}
	do
		echo Start Version for : $variant
		$variant --version
	done

echo Anykey if u wanna continue update alternatives

read anykey
cd /usr/bin/

sudo rm python
sudo rm python-config

sudo ln -s python3.10 python

sudo ln -s python3.10-config python-config
ls -a --color | grep python


cd -
echo check python
python --version
echo check python3
python3 --version


