#!/bin/bash


source ~/Tools/exe.sh

start $0

echo "System updating with pacman ..."
exe "sudo pacman -Syu"

echo "Checking system updating via pacman ..."
exe "pamac checkupdates -a"


echo "Updating system via pacman ..."
exe "sudo pamac upgrade -a"

echo "Checking for orphaned packages ..."
exe "pacman -Qdt; echo '---'; pamac list -o"

echo "Removing all orphans ..."
exe "sudo pamac remove -o"


echo "Checking for orphaned packages ..."
exe "pacman -Qdt; echo '---'; pamac list -o"

echo Removing all unused packages from cache...
exe "sudo pacman -Sc"

echo Removimg old packages from  more except for the latest three package versions...
exe "sudo paccache -rvk3"

end $0

