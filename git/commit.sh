#!/bin/bash

# shellcheck disable=SC1091
. "$HOME"/.exe

force_flag=""
for param in "${@}"; do
	if [ "$param" = "-f" ] || [ "$param" = "--force" ]; then
		force_flag="-f"
	fi
done

h1 GIT FULL COMMIT

git_status=$(git status -s)
if [ -z "$git_status" ]; then
	echo -e "${T_C}Nothing to do${N_C}"
	exit
fi

echo -e "$T_C Git status: $N_C"
exe "git status" --noconfirm
# echo "$git_status"

echo -e "$T_C Adding all files ... $N_C"
exe "git add -v *"

git status -s | while IFS=' ' read -r f_type file; do
	case $f_type in
	M) message="Modified" ;;
	MM) message="Modified" ;;
	AM) message="Added and modified" ;;
	A) message="Added" ;;
	D) message="Deleted" ;;
	*)
		echo "Unkown type: $f_type"
		continue
		;;
	esac
	echo -e "========================================================"
	message="$file - $message :"
	echo -e "$message"
	echo -e "Commiting for ${B_P}$file${N_C}":
	if [ -z "$force_flag" ]; then
		echo -e "${T_Y} * Text your message for the commit * ${N_C}"
		read -r -e -p " " -i "$message " u_message < /dev/tty
		#read -r u_message < /dev/tty
	else
		u_message=$message
	fi
	echo -e "$B_C Commiting ...$N_C"
	echo -e "${T_B}$u_message${N_C}"
	git commit -m "$u_message" "$file"
done

#echo -e "$T_C Git status: $N_C"
#exe "git status" -n

echo -e "$B_C Pushing ...$N_C"
exe "git push"

echo -e "$T_C Git status: $T_C"
exe "git status" --noconfirm

end 
