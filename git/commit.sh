#!/bin/bash

. ~/Tools/exe.sh
start $0

echo -e "$cy GIT FULL COMMIT $cn"

echo -e "$T_C Git status : $N_C"
exe "git status" --noconfirm

[ ! `git status -s` ] && exit || git status -s

echo -e "$T_C Adding all files ... $N_C"
exe "git add -v *"

echo -e "$T_W Change analizing ... $N_C"
exe "git status -s"

str_arr=(`git status -s`)
for idx in ${!str_arr[@]}
do
	[ $(($idx % 2)) -eq 0 ] && f_type=${str_arr[$idx]} || continue
	file=${str_arr[$idx+1]}
	case $f_type in
		M)
			message="Modified" ;;
		AM)
			message="Added and modified" ;;
		A)
			message="Added" ;;
		D)
			message="Deleted"
#			[ -f $file ] && git rm -r $file || echo $file not found at the file system.
			;;
		*)
			echo "Unkown type: $ftype"
			continue
		;;
	esac

	echo -e "$cb ======================================================== $cn"
	echo -e "$cr $file - $message :$cn"
	echo -e Commiting for $B_P$file$N_C:
	echo -e "$T_Y * Text your message for the commit *$N_C"
	read -e -p " " -i "$file - $message : " u_message
	echo -e "$B_C Commiting ...$N_C"
#	echo $u_message
	git commit -m "$u_message" $file
done

echo -e "$T_C Git status: $N_C"
exe "git status"

echo -e "$B_C Pushing ...$N_C"
exe "git push"

echo -e "$T_C Git status: $T_C"
exe "git status"  --noconfirm


end $0
