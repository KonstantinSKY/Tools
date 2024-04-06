#!/bin/bash

############################################################################
# Script name : create_links.sh               Date   : 10/02/22            #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Create symbolic link to Work disk                          #
############################################################################
source ../exe.sh

h1 Directory Symbolic Links Creator Script 

directories="Tools Downloads Security Documents .password-store Music Pictures Projects Videos Configs Obsidian BackUps"

h2 Symbolic links from ~/ to ~/Work will be created for next Directories:
h2 "$directories"

for dir in $directories; do
	echo ---------------------------------------------
	h2 Creating 	
	target_dir=$HOME/Work/$dir
	dir=$HOME/$dir

	h2 Checking "$dir" for link existing:
	if [ -L "$dir" ]; then
		if [ -e "$dir" ]; then
			echo "Link exist and good"
			echo "$dir --> $(readlink -f "$dir")"
			continue
		else
			echo "Broken link will be remove"
			rm "$dir"
		fi
	fi

	h2 Checking source "$dir" for directory existing:
	if [ -d "$dir" ]; then
		if [ "$(ls -A "$dir")" ]; then
			echo "$dir is not Empty"
			continue
		else
			echo "$dir is Empty and will be remove"
			rm -r "$dir"
		fi
	fi

	h2 Checking target "$target_dir" for directories:
	if [ -d "$target_dir" ]; then
		echo "$target_dir" is exist
	else
		echo "$target_dir" is not exist will be created
		mkdir -p "$target_dir"
	fi

	echo Creating symbolic link:
	echo "$dir -->  $target_dir"
	ln -s "$target_dir" "$dir"

	echo Checking for good lint by readlink...
	readlink -f "$dir"

done
