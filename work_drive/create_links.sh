#!/bin/bash

############################################################################
# Script name : create_links.sh               Date   : 10/02/22            #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Create symbolic link to Work disk                          #
############################################################################

directories="Tools Downloads Security Documents .password-store Music Pictures Projects Videos .ssh"

echo Creating symbolic links from ~/ to ~/Work ...
echo $directories

for dir in $directories
do
	echo ---------------------------------------------
	target_dir=$HOME/Work/$dir
	dir=$HOME/$dir

	echo Checkng $dir for link:
	if [ -L "$dir" ] ; then
   		if [ -e "$dir" ] ;
		then
      		echo "Link exist and good"
			echo "$dir --> $(readlink -f $dir)"
			continue
   		else
    		echo "Broken link will be remove"
	  		rm $dir
   		fi
	fi

	echo Checkng $dir for directory:
	if [ -d "$dir" ];
	then
		if [ "$(ls -A $dir)" ] ; then
     		echo "$dir is not Empty"
			continue
		else
    		echo "$dir is Empty and will be remove"
			rm -r $dir
		fi
	fi

	echo Checkng $target_dir for directories:
	if [ -d "$target_dir" ] ; then
		echo $target_dir is exist
	else
		echo $target_dir is not exist will be created
		mkdir -p $target_dir
	fi

	echo Creating symbolic link:
	echo $dir "-->" $target_dir
	ln -s $target_dir $dir

	echo Checking by readlink...
	readlink -f $dir

done


