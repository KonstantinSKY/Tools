#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Delete repository from github                              #
############################################################################

echo Deleting repository from  Github...

gh repo list
echo Enter repo name for deleting:
read repo

echo Will be deleting the repository from GitHub !permanently and forever!: $repo
echo Enter "YES" if you for deleting $repo forever
read yes
if [ ! "yes" == "$yes" |  tr '[:lower:]' '[:upper:]' ]
	then
		echo Exiting
		exit
	fi

echo Deleting..

gh repo delete $repo --yes

gh repo list
