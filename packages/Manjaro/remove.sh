#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install packages from file list                            #
############################################################################

# shellcheck disable=SC1091
source "$HOME/.exe"

h1 Manjaro Linux package removing

_remove_file() {
    local file=$1
    h2 Reading packages from file: "$file"
    readarray -t packages <"$file"

    h2 Got packages from file:
    for package in "${packages[@]}"; do
        echo "$package"
    done

    for package in "${packages[@]}"; do
        _remove_package "$package"
    done
}

_remove_package() {
    local pkg=$1
    if [ "$pkg" = "-f" ]; then
        return
    fi

    echo "Checking if $pkg is installed..."
    if pamac list --installed | grep -q "^$pkg "; then
        echo -e "${T_C}$pkg${N_C} is installed."
        h2 "Removing $pkg"
        exe "sudo pamac remove $pkg --no-confirm --unneeded"
    else
        echo -e "${B_R}$pkg${N_C} is not installed."
    fi
}

for param in "${@}"; do
    if [ -f "$param" ]; then
        _remove_file "$param"
    else
        _remove_package "$param"
    fi
done

end
