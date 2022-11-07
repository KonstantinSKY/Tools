#!/bin/bash

. colors.sh
echo -e "$cy GIT FULL COMMIT $cn"

echo -e "$cg Git status : $cn"
git status

[ ! `git status -s` ] && exit || git status -s

echo -e "$cg Adding all files ... $cn"
git add -v *

echo -e "$cg Change analizing ... $ch"
git status -s

str_arr=(`git status -s`)

#echo status array : ${str_arr[@]}
#echo indexes : ${!str_arr[@]}

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
	echo Gonna commit for $file:
	echo -e "$cb * Text your message for the commit * $cn"
	read -e -p " " -i "$file - $message : " u_message
	echo -e "$cg Commiting ...$cn"
#	echo $u_message
	git commit -m "$u_message" $file
done

echo -e "$cg Git status: $cn"
git status
echo -e "$cg Pushing ...$cn"


echo -e "$cg Git status: $cn"
git status


echo -e "$cg Done. $cn"
