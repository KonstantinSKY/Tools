#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################


# Check if a file name is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <commands_file>"
    exit 1
fi

# Assign the first argument to a variable for the commands file
commands_file=$1

# Check if the specified file exists and is readable
if [ ! -f "$commands_file" ] || [ ! -r "$commands_file" ]; then
    echo "Error: File '$commands_file' not found or not readable."
    exit 1
fi

# Read and execute commands from the file
while read -r line; do
	echo "Next command: $line"

	read -p "Press enter to execute the above command or N to skip: " user_input
	if [[ $user_input == [Nn] ]]; then
		echo "Skipping: $line"
	else
		echo "Executing: $line"
		eval $line
		echo "Command finished"
	fi

    read -p "Press enter to execute the above command..."
    echo "Executing:"
	echo "$line"
    eval $line
    echo "Command finished"
    # Optionally wait for user input to proceed to the next command
done < "$commands_file"

echo All commands executed
