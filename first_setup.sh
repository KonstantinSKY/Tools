#!/bin/bash

############################################################################
# Script name : first_setup.sh               Date   : 10/02/22             #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Add env vars and my rc part to bashrc and to others ..rs fi#
############################################################################

echo Adding additional environment variables

./env.conf


exit

path=$PATH_TOOLS
link=". $path/rc"
files=".bashrc .zhsrc .zshrc"

echo  The first settings for my environments

echo $PATH
echo Adding ~/Tools to PATH ...
export PATH=$PATH:$path
echo $PATH 


echo Adding link string to .rc files ...
for file in $files
    do
	echo Trying to add link to $file
        grep -q "$link"	~/$file && echo "The $file already has: $link" || echo $link >> ~/$file
done

echo Added my rc
cat my_rc