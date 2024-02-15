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
	while true; do
        echo -e "Press \033[36m\033[1mEnter\033[0m to execute the command, \033[36m\033[1mN \033[0m to skip, or \033[31m\033[1mQ\033[0m to quit the script: "
        read -s -n 1 user_input

		# Move up two lines
		echo -en "\033[2A"
		# Clear the two lines
		echo -e "\033[K"
		echo -e "\033[K"
		# Move up one more time to be at the beginning of the first cleared line
    	echo -en "\033[1A"

        case $user_input in
            "")
                echo -e "\033[36mExecuting:"
                echo -e "\033[34m\033[1m$1\033[0m"
                eval "$1"
                # Green color for finished message
                echo -e "\033[36mCommand finished\033[0m"
                echo
                break
                ;;
            [Nn])
                echo -e "Skipping: \033[34m\033[1m $1 \033[0m"
				echo
                break
                ;;
            [Qq])
                echo -e "\033[31mQuitting script.\033[0m"
                exit 0
                ;;
            *)
                echo -e "\033[31mInvalid input.\033[0m"
                ;;
        esac
    done
}
