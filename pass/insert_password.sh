#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Insert multilane to pass store                             #
############################################################################
. colors.sh

fields=(Login Password User_Name Token URL Description)
echo ${fields[0]}

echo -e "$cr Insert New Password$cn"
echo -e "$cb Your password storage:$cn"
pass
echo -e "$cv Enter new password record name:$cn"
read name
echo -e "$cg Entering data for $name ...$cn"
result=""
for field in ${fields[@]}
do
	echo -e "$cv Enter $field: $cn"
	read value
	[  "$value" == "" ] && continue
	[ "$result" ] && result="$result\n"
	result="$result$field:\n$value"
done

echo -e "$sv Do you want to insert new password entry with name:$sr $name $sn" 
echo -e $cy$result$cn
read -p "Any key for save it to password-store:" anykey

echo -e $result | pass insert -m $name
echo -e "$sg Pushing to gitlab ... $sn"
pass git push
echo -e "$cb Your new password store: $cy"
echo -e "$cn"
pass
