#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install and setup python for ubuntu                        #
############################################################################

echo list of installed Python alternatives in /usr/bin/
ls /usr/bin | grep python
list=($(ls /bin/ | grep python))

#echo ${list[@]}

for variant in ${list[@]}
	do
		echo Starting Version for : $variant
		$variant --version
	done

echo Anykey if u wanna continue

apt list | grep python

