#!/bin/bash
source "$EXE"

h1 MANJARO PACKAGES UPDATING

h2 System updating with pacman
exe "sudo pacman -Syu --noconfirm"

h2 Checking system updating via pacman
exe "pamac checkupdates -a"

h2 Updating system via pacman
exe "sudo pamac upgrade -a --no-confirm"

h2 Checking for orphaned packages
exe "pacman -Qdt; pamac list -o"

h2 Removing all orphans
exe "sudo pamac remove -o"

h2 Checking for orphaned packages
exe "pacman -Qdt; pamac list -o"

h2 Removing all unused packages from cache
# exe "sudo pacman -Scf"
exe "pamac clean"

h2 Removing old packages from more except for the latest three package versions
exe "sudo paccache -rfvk3"

end
