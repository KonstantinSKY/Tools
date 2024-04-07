#!/bin/bash


source .exe

h1 MANJARO PACKAGES UPDATING

h2 System updating with pacman
exe "sudo pacman -Syu"

h2 Checking system updating via pacman
exe "pamac checkupdates -a"


h2 Updating system via pacman
exe "sudo pamac upgrade -a"

h2 Checking for orphaned packages
exe "pacman -Qdt; echo '---'; pamac list -o"

h2 Removing all orphans
exe "sudo pamac remove -o"

h2 Checking for orphaned packages
exe "pacman -Qdt; echo '---'; pamac list -o"

h2 Removing all unused packages from cache
exe "sudo pacman -Sc"

h2 Removing old packages from  more except for the latest three package versions
exe "sudo paccache -rvk3"

end $0

