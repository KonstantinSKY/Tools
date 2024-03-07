#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

# Text color variables
T_Black='\033[0;30m'        # Black
T_R='\033[0;31m'            # Red
T_G='\033[0;32m'            # Green
T_Y='\033[0;33m'            # Yellow
T_B='\033[0;34m'            # Blue
T_P='\033[0;35m'            # Purple
T_C='\033[0;36m'            # Cyan
T_W='\033[0;37m'            # White

# Bold text color variables
B_Black='\033[1;30m'        # Black
B_R='\033[1;31m'            # Red
B_G='\033[1;32m'            # Green
B_Y='\033[1;33m'            # Yellow
B_B='\033[1;34m'            # Blue
B_P='\033[1;35m'            # Purple
B_C='\033[1;36m'            # Cyan
B_W='\033[1;37m'            # White

# Underline text color variables
U_Black='\033[4;30m'        # Black
U_R='\033[4;31m'            # Red
U_G='\033[4;32m'            # Green
U_Y='\033[4;33m'            # Yellow
U_B='\033[4;34m'            # Blue
U_P='\033[4;35m'            # Purple
U_C='\033[4;36m'            # Cyan
U_W='\033[4;37m'            # White

# Background color variables
BG_Black='\033[40m'         # Black
BG_R='\033[41m'             # Red
BG_G='\033[42m'             # Green
BG_Y='\033[43m'             # Yellow
BG_B='\033[44m'             # Blue
BG_P='\033[45m'             # Purple
BG_C='\033[46m'             # Cyan
BG_W='\033[47m'             # White

# Reset text color variable
N_C='\033[0m'               # No Color


start(){
	echo -e "${T_Y}Script Started: ${B_P}$1 ${N_C}"
	echo
}

end(){
	echo -e "${T_Y}Script Finished: ${B_P}$1 ${N_C}"
}

show(){
	echo -e "Showing file: ${B_W}$1${N_C} ..."
	exe "cat $1"
}

copy(){
	echo -e "Copying ${B_W}$2${N_C} ..."
	exe "cp $1 $2 && ls -la $2"
}

commit(){
	echo "Commiting to GitHub: $1 ..."
	exe "git add *; git commit -a -m '$1'; git push"
}

py_add(){
	echo "Add Python libraries: $1"
	exe "poetry add $1"
}

# Define a function to execute a single-line command
exe() {
    if [ -z "$1" ]; then
       # Red color for error message
        echo -e "\033[31m Usage: execute_command 'your_command_here'\033[0m"
        return 1n
    fi

	local command=$1
    local key=$2

	echo -e "${T_P}Next Command: ${B_B}$command${N_C}"

	if [ "$key" == "--noconfirm" ]; then
        echo -e "${T_C}Executing command${N_C} (no confirmation):"
        echo -e "${B_B}$command${N_C}\n"
        eval "$command"
        # Green color for finished message
        echo -e "${T_C}Command finished.${N_C}\n"
        return
    fi


	while true; do
        echo -e "Press ${B_C}Enter${N_C} to execute the command, ${B_Y}N${N_C} to skip, or ${B_R}Q${N_C} to quit the script: "
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
                echo -e "${T_C}Executing command:"
                echo -e "${B_B}$1${N_C}"
				echo
                eval "$1"
                # Green color for finished message
                echo -e "${T_C}Command finished.${N_C}"
                echo
                break
                ;;
            [Nn])
                echo -e "Skipping command: ${B_B}$1${N_C}"
				echo
                break
                ;;
            [Qq])
                echo -e "${T_R}Quitting script.${N_C}"
                exit 0
                ;;
            *)
                echo -e "${T_R}Invalid input.${T_R}"
                ;;
        esac
    done
}
