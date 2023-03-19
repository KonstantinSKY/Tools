#!/bin/bash

echo Deleting repository from  Github...

if [  $1 ]
	then
		repo=$1
	else
		gh repo list
		echo Enter repo name for deleting:
		read repo
	fi

echo Will be deleting the repository from GitHub !permanently and forever!: $repo
echo Enter "YES" if you for deleting $repo forever
read yes
if [ ! "yes" == "$yes" |  tr '[:lower:]' '[:upper:]' ]
	then
		echo Exiting
		exit
	fi

echo Deleting...

gh repo delete $repo --yes

gh repo list
