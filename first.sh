#!/bin/bash

############################################################################
# Script name : first_setup.sh               Date   : 10/02/22             #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Add env vars and my rc part to bashrc and to others ..rs fi#
############################################################################

chmod_list=""

echo Adding additional environment variables an rc aliases
chmod +x rc.sh
. rc.sh
echo $TOOLS_PATH

link=". $TOOLS_PATH/rc.sh"
rc_files=".bashrc .zhsrc .zshrc"
 
echo Adding link string $link to .rc files ...
for file in $rc_files
    do
		echo $file

		file="$HOME/$file"
		echo Checking file $file...
		[ ! -f $file ] &&  touch $file || echo "$file found"
		
		echo Trying to add link to $file
        grep -q "$link"	$file && echo "The $file already has: $link" || echo $link >> $file
	done


