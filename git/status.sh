#!/bin/bash

echo GIT FULL COMMIT

echo Git status :
git status
git status -s

echo Adding all files ...
git add -v *
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
			git rm -r $file 
			;;
		*)
			echo "Unkown type: $ftype"
			continue
		;;
	esac
	
	echo ========================================================
	echo "$file - $message :"
	echo Gonna commit for $file:
	echo "* Text your message for the commit *"
	read -e -p " " -i "$file - $message : " u_message
	echo Commiting ...
#	echo $u_message
	git commit -m "$u_message" $file
done

echo Git status: 
git status
echo Pushing ...
git status
