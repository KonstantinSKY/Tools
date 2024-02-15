#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

# Define a function to execute a single-line command
exe() {
    if [ -z "$1" ]; then
       # Red color for error message
        echo -e "\033[31m Usage: execute_command 'your_command_here'\033[0m"
        return 1
    fi

	echo -e "\033[35mNext Command: \033[34m\033[1m $1 \033[0m"

	read -p "Press enter to execute the above command or N to skip: " user_input

	if [[ $user_input == [Nn] ]]; then
		 echo -e "Skipping: \033[34m\033[1m $1 \033[0m"
	else
		echo -e "\033[36mExecuting:"
		echo -e	"\033[34m\033[1m$1\033[0m"
		eval $1
		 # Green color for finished message
    	echo -e "\033[36mCommand finished\033[0m"
	fi
}
