#!/bin/bash

############################################################################
# Script name : create_links.sh               Date   : 10/02/22            #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Create symbolic link to Work disk                          #
############################################################################
source "$HOME"/.exe

h1 Directory Symbolic Links Creator Script

directories="Tools Downloads Security Documents .password-store Music Pictures Projects Videos Configs Obsidian BackUps"

h2 Symbolic links from ~/ to ~/Work will be created for next Directories:
h2 "$directories"

for dir in $directories; do
	echo ---------------------------------------------
	target_dir=$HOME/Work/$dir
	dir=$HOME/$dir
	h1 "Symbolic link $dir --> target_dir"

	h2 Checking "$dir" for link existing:
	if [ -L "$dir" ]; then
		if [ -e "$dir" ]; then
			echo "Link exist and is good"
			echo "$dir --> $(readlink -f "$dir")"
			continue
		else
			echo -e "${T_R}" "Broken link $dir will be remove""${N_C}"
			exe "rm ""$dir"""
		fi
	fi

	h2 Checking source "$dir" for directory existing:
	if [ -d "$dir" ]; then
		if [ "$(ls -A "$dir")" ]; then
			echo -e "${T_R}" "$dir is not Empty, skiping""${N_C}"
			continue
		else
			echo "$dir is Empty and will be remove"
			h2 Removing directory "$dir"
			exe "rm -r $dir"
		fi
	fi

	h2 Checking target "$target_dir" for directories:
	if [ -d "$target_dir" ]; then
		echo "$target_dir" is exist
	else
		echo "$target_dir" is not exist will be created
		h2 Creating directory "$target_dir"
		exe "mkdir -p $target_dir; ls $target_dir" -n
	fi

	h1 "Creating and checking symbolic link: $dir -->  $target_dir"
	exe "ln -sv $target_dir $dir; readlink -f $dir"

done
end
