#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :    rrrrrrrrrrr                                             #
############################################################################

# Text color variables
T_Black='\033[0;30m' # Black
T_R='\033[0;31m'     # Red
T_G='\033[0;32m'     # Green
T_Y='\033[0;33m'     # Yellow
T_B='\033[0;34m'     # Blue
T_P='\033[0;35m'     # Purple
T_C='\033[0;36m'     # Cyan
T_W='\033[0;37m'     # White

# Bold text color variables
B_Black='\033[1;30m' # Black
B_R='\033[1;31m'     # Red
B_G='\033[1;32m'     # Green
B_Y='\033[1;33m'     # Yellow
B_B='\033[1;34m'     # Blue
B_P='\033[1;35m'     # Purple
B_C='\033[1;36m'     # Cyan
B_W='\033[1;37m'     # White

# Underline text color variables
U_Black='\033[4;30m' # Black
U_R='\033[4;31m'     # Red
U_G='\033[4;32m'     # Green
U_Y='\033[4;33m'     # Yellow
U_B='\033[4;34m'     # Blue
U_P='\033[4;35m'     # Purple
U_C='\033[4;36m'     # Cyan
U_W='\033[4;37m'     # White

# Background color variables
BG_Black='\033[40m' # Black
BG_R='\033[41m'     # Red
BG_G='\033[42m'     # Green
BG_Y='\033[43m'     # Yellow
BG_B='\033[44m'     # Blue
BG_P='\033[45m'     # Purple
BG_C='\033[46m'     # Cyan
BG_W='\033[47m'     # White

# Reset text color variable
N_C='\033[0m' # No Color

# shellcheck disable=SC2034
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
SCRIPT_NAME="$0"
SCRIPT_PARAMS=("$@")

FAIL="${B_R}FAIL${N_C} :"
OK="${B_C}OK${N_C} :"

force_param=""
# Start Block
echo -e "${T_Y}Script Started: ${B_P}$0 ${N_C}"
for param in "${SCRIPT_PARAMS[@]}"; do
	if [[ "$param" = "--force" ]] || [[ "$param" = "-f" ]]; then
		force_param="-f"
		echo -e "${T_B}Force mode${N_C}"
	fi
done

#flags checker

_reset_flags() {
	noconfirm_flag=""
	result_flag=""
	sudo_flag=""
}

_check_flags() {
	for flag in "${@}"; do
		# shellcheck disable=SC1073
		if [[ "$flag" = "--noconfirm" ]] || [[ "$flag" = "-n" ]] || [[ "$force_param" = "-f" ]]; then
			noconfirm_flag="-n"
		fi
		if [[ "$flag" = "--result" ]] || [[ "$flag" = "-r" ]]; then
			result_flag="-r"
		fi
		if [[ "$flag" = "--sudo" ]]; then
			sudo_flag="sudo"
		fi
	done

}

#functions block
end() {
	echo -e "${T_Y}Script Finished: ${B_P}$SCRIPT_NAME ${N_C}"
	exit
}

show() {
	# echo show flags "$@"
	echo -e "${B_W}Showing file: ${B_B}$1"
	exe "cat $1" "$@"
}

commit() {
	h2 "Commiting to GitHub: $1 ..."
	exe "git add *; git commit -a -m '$1'; git push"
}

py_add() {
	echo -e "Adding Python library (es): ${T_B}$1${N_C}"
	exe "poetry add $1"
}


clone(){
	local repo=$1
	local dir=$2
	echo -e "${B_Y}Clonning $repo reository to $dir${N_C}"
	exe "exe git clone $repo $dir" "$@"
}

run() {
	local script=$1
	local message=""
	[ -n "$2" ] && message=" for $2"
	echo -e "${B_Y}Running script $message${N_C}"
	exe "bash $script" "$@"
}

# Define a function to execute a single-line command
exe() {
	if [ -z "$1" ]; then
		# Red color for error message
		echo -e "\033[31m Usage: execute_command 'your_command_here'\033[0m"
		return 1
	fi
	_check_flags "$@"
	echo NOCONFIRM "$noconfirm_flag"

	local command="${sudo_flag:+$sudo_flag }$1"

	while true; do
		if [ -z "$noconfirm_flag" ]; then
			# user_input=""
			# else
			echo -e "${T_P}Next Command: ${B_B}${command}${N_C}"
			echo
			echo -e "Press ${B_C}Enter${N_C} : execute command; ${B_Y}N${N_C} : skip; ${B_B}F${N_C} : force next steps; ${B_R}Q${N_C} : quit script."
			read -s -n 1 -r user_input

			# Move up three lines
			echo -en "\033[3A"
			# Clear the three lines
			echo -e "\033[K"
			echo -e "\033[K"
			echo -e "\033[K"
			# Move up one more time to be at the beginning of the first cleared line
			echo -en "\033[3A"
			if [[ "$user_input" == [fF] ]]; then
				force_param="-f"
				user_input=""
				echo -e "${T_B}Force mode${N_C}"
			fi
		else
			user_input=""
		fi

		case $user_input in
		"")
			#		if [ -z "$force_param" ]; then echo -e "${T_C}Executing command:${N_C}"; fi
			echo -e "${B_B}$command${N_C}"
			echo
			# Eval block
			if [ -z "$result_flag" ]; then
				eval "$command"
			else
				result=$(eval "$command")
			fi

			# if [ -z "$force_param" ]; then echo -e "${T_C}Command finished.${N_C}"; fi
			break
			;;
		[Nn])
			echo -e "${T_Y}Skipping command: ${B_B}$1${N_C}"
			break
			;;
		[Qq])
			echo -e "${B_R}Quitting script.${N_C}"
			exit 0
			;;
		*)
			echo -e "${T_R}Invalid input.${T_R}"
			;;
		esac
	done
	_reset_flags
}

exit_if_not() {
	local param=$1
	local msg=$2

	if [ -z "$param" ]; then
		echo -e "${T_R}""$msg""${N_C}"
		end "$0"
	fi
}

read_if_not() {
	local param=$1
	local msg=$2

	if [ -z "$param" ]; then
		echo -e "${T_P}""$msg""${N_C}"
		read -r result
	else
		result="$param"
	fi
}

# moving any file to .old version
# cp_to_backup() {
# 	local filename=$1
# 	local backup_filename=${filename}.backup

# 	if [ -f "$filename" ]; then
# 		h2 "Copying exists file $filename to $backup_filename ..."
# 		exe "cp $filename $backup_filename; ls -la $filename $backup_filename"
# 	fi
# 	# moving any file to .old version
# }
mv_to_old() {
	local filename=$1
	local old_filename=${filename}.old

	if [ -f "$filename" ]; then
		h2 "Moving exists file $filename to $old_filename ..."
		exe "mv $filename $old_filename; ls -la $old_filename"
	fi
}

download_or_exit() {
	local url=$1

	exe "wget $url"
}

success() {
	local -a header=()
	if mycmd; then
		echo -e "${T_C}${message} successful.${N_C}"
	else
		echo -e "${T_R}${message} failed.${N_C}"
		end "$0"
	fi
}

h1() {
	local -a header=()
	for arg in "$@"; do
		header+=("${arg^^}")
	done
	echo
	echo -e "${B_W}${header[*]}${N_C}"
}

h2() {
	local -a header=()
	for arg in "$@"; do
		header+=("${arg}")
	done
	echo
	echo -e "${B_W}${header[*]}${N_C} ..."
}
# FILES
exit_if_not_file() {
	local filename=$1
	exit_if_not "$filename" "Filename is missing"

	h2 "Checking if file: $filename is exists"
	if [ ! -f "$filename" ]; then
		echo -e "${T_R}"File: "$filename" not exist "${N_C}"
		end "$0"
	else
		echo "File: $filename is exist"
	fi
}

add_string_to_file() {
	local string=$1
	sudo sh -c echo staet
	local file=$2
	exit_if_not "$string" "String  is mising as argument"
	exit_if_not_file "$file"
	# _check_flags "$@"
	# echo "$@"

	# echo -e "Adding string: $string to the file: $file $sudo_flag"
	# command="echo $string | $sudo_flag tee -a $file"
	# fi
	# if [ -z "$sudo_flag" ]; then
	# echo "$string" | tee -a "$file" # >/dev/null
	# else
	exe "echo  $string" --sudo
	# sudo sh -c "echo $string | tee -a $file" # >/dev/null
	# fi"
	#_reset_flags
	#exe "$command"
}

add_string_if_not_to_file() {
	local string=$1
	local file=$2

	exit_if_not_file "$file"

	h2 Trying to add the string: "$string" to file: "$file"
	grep -q "$string" "$file" && echo The "$file" is already has: "$string" || echo "$string" >>"$file"
}

copy() {
	local source_file=$1
	local target_file=$2
	echo
	echo -e "${B_W}Copying ${B_B}$source_file --> $target_file${N_C}"
	exe "cp -fr $source_file $target_file && ls -la $source_file $target_file" "$@"
}

usage() {
	local number=$1
	local
	echo "Usage: $0 <source_file> <target_file>"
	echo "Copies <source_file> to <target_file> and lists details of both files."
	exit 1
}

backup() {
	[ -d "$BACKUPS_PATH" ] && BACKUPS_DIR="$BACKUPS_PATH/" || BACKUPS_DIR=""
	source_file=$1
	target_file=${BACKUPS_DIR}$source_file.backup

	echo
	# Check if the provided path is a symlink
	if [ -L "$source_file" ]; then
		echo -e "$FAIL Can not backup symlink"
		ls -la "$source_file"
		return 1
	fi
	# Check if the backup file already exists and create a new file name if necessary
	while [ -e "$target_file" ]; do
		target_file="$source_file.backup.$(printf '%03d' "$count")"
		let count+=1
	done

	echo -e "${B_W}Backing up ${B_B}$source_file --> $target_file${N_C}"
	copy "$source_file" "$target_file" "$@"
}
#Links
slink() {
	local source=$1
	local link=$2
	local message=$3
	h1 "Symbolic Link for '$message'"

	if [ -L "$link" ]; then
		if [ -e "$link" ]; then
			echo -e "${T_C}Symlink $link already exists${N_C}"
			ls -la "$link"
			return 1
		else
			echo -e "${T_E}Symlink $link is broken${N_C}"
			ls -la "$link"
			h2 "Deleting existing entity: $link"
			exe "rm -rf $link"
		fi
	elif [ -e "$link" ]; then
		backup "$link"
		h2 "Deleting existing entity: $link"
		exe "rm -rf $link"

	fi

	echo -e "${B_W}Creating '$message' symbolic link ${B_B}$link --> $source${N_C}"
	exe "ln -sf $source $link && check_link $link $source" "$@"
	# check_link "$link" "$source"
}

#configs and manipulations

enable_parameter() {
	local param=$1
	local config_file=$2
	local message="Enabling $3"
	exit_if_not "$param" "Enabling Parameter is missing as argument"
	exit_if_not "$config_file" "Enabling Parameter is missing as argument"

	h2 "$message"
	exe "sed -i 's/#$param/$param/' $config_file" "$@"

	echo Checking if parameter: "$param" uncommented
	if ! grep -q "^$param" "$config_file"; then
		warn "Uncomented $param not found in $config_file"
	else
		ok "Enabled. Uncomented $param found in $config_file"
	fi
}

#messges
warn() {
	local message=$1
	echo -e "${T_R}$message${N_C}"
}

ok() {
	local message=$1
	echo -e "${T_G}OK! ${T_C}$message${N_C}"
}

#Checking

check_link() {
	if [ $# -ne 2 ]; then
		echo "Usage: $0 <symlink-path> <expected-target>"
		exit 1
	fi
	# Assign arguments to variables
	local symlink_path="$1"
	local expected_target="$2"
	# Check if the provided path is a symlink
	if [ ! -L "$symlink_path" ]; then
		echo -e "$FAIL $symlink_path is not a symlink."
		return 1
	fi
	if [ ! -e "$(readlink -f "$expected_target")" ]; then
		echo -e "$FAIL The symlink is broken. $symlink_path -->"
		return 1
	fi
	actual_target="$(readlink -f "$symlink_path")"

	if [ ! "$actual_target" = "$expected_target" ]; then
		echo -e "$FAIL The symlink does not point to the expected target."
		echo "Actual target: $actual_target"
		echo "Expected target: $expected_target"
		return 1
	fi
	echo -e "$OK $symlink_path --> $expected_target"
}

check_installed() {
	local package=$1
	exit_if_not "$package"
	if pamac list --installed | grep -q "^$package"; then
		echo -e "$OK $package Package is installed."
	else
		echo -e "$FAIL $package Package is not installed."
	fi
}

check_uninstalled() {
	local package=$1
	exit_if_not "$package"
	if pamac list --installed | grep -q "^$package"; then
		echo -e "$FAIL $package Package is installed."
	else
		echo -e "$OK $package Package is not installed."
	fi
}
