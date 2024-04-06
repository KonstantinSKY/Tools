#!/bin/bash
############################################################################
# Script name : first_setup.sh               Date   : 10/02/22             #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Add env vars and my rc part to bashrc and to others ..rs fi#
############################################################################
source ../exe.sh

#directories
CONFIGS_DIR=$HOME/Work/Configs
#files
MAIN_RC=$CONFIGS_DIR/rc

h1 SETUP LINUX RC FILES

main_link=". $MAIN_RC"
rc_files="bashrc zhsrc zshrc"

for file in $rc_files; do
	target_file=$HOME/.$file
	h2 Creating target rc file: "$target_file" if not exists
	exe "touch $target_file"

	add_string_if_not_to_file "$main_link" "$target_file"

	link=". $CONFIGS_DIR/$file"
	add_string_if_not_to_file "$link" "$target_file"

	echo Checking What is inside the file...
	tail -n 5 "$file"
	echo "==============="

done

end
