#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

. \colors.sh

git status

str_arr=(`git status -s`)
del_arr=()

# echo ${str_arr[@]}

for idx in ${!str_arr[@]}
do
	[ ${str_arr[$idx]} == "D" ] && del_arr+=(${str_arr[$idx+1]}) || continue
done

[ ${#del_arr[@]} == 0 ] && { echo -e "$cg Nothing for delete! $cn"; exit; } || echo -e "$cg Files list for delete : $cn"

echo -e "$cv  0 $cr  ! DELETE ALL !"
for idx in  ${!del_arr[@]}
	do
		echo -e "$cv  $(($idx + 1))   $cr${del_arr[$idx]}"
	done

echo -e "$cv Select your number ...$cn"

read -n 3 num

if [ $num == 0 ]
then
	echo -e "$cr Deleting ALL files !!! $cn"
	for item in ${del_arr[@]}
	do
		echo -e "$cg Deleling $item ...$cn"
		git rm -r $item
	done
elif [[ $num > 0 ]] && (( $num <= ${#del_arr[@]} ))
then
	echo -e "$cg Deleling ${del_arr[$(($num-1))]} ... $cn"
	git rm -r ${del_arr[$(($num-1))]}
else
	echo -e "$cr Wrong number !$cn"
fi

git commit

