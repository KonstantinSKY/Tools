#!/bin/bash

echo Updating official repo with pacman...
sudo pacman -Syyuu

echo Updating AUR repo with pacman...
pamac checkupdates -a
sudo pamac upgrade -a

pacman -Qdt
pamac list -o
while true; do
    read -p "Do you wish to remove all orphans?" yn
    case $yn in
        [Yy]* ) echo "Removing all orphans"; sudo pacman -Rs $(pacman -Qdtq); break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo Removing all unused packages from cache...
sudo pacman -Sc
echo Removimg old packages from  more except for the latest three package versions...
sudo paccache -rvk3
echo Done.


