#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
prefixes=~/.local/share/wineprefixes
terminal=drive_c/Program\ Files/MetaTrader\ 5
echo Starting Metatrader 5 in wine...

if ! [ "$1" ]; then
    echo "No command-line argument provided."
	read -p "Enter wine prefix:",  prefix
else
    prefix=$1
fi

path="$prefixes/$prefix/$terminal"
if [ ! -d "$path" ]; then
    echo "Invalid wine prefix: $path"
	echo Select from prefixes:
	ls "$prefixes"
    exit 1
fi

echo Starting : $path
ls "$path"
wine64 "$path"/terminal64.exe >/dev/null 2>&1 &
