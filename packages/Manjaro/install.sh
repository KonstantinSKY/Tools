#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install packages from file list                            #
############################################################################

# shellcheck disable=SC1091
source "$HOME/.exe"

h1 Manjaro Linux package installation

# Check for upgradable packages using pamac
h1 Checking for update
updates=$(pamac checkupdates -q)

if [[ -z $updates ]]; then
    echo -e "${T_C}System is up to date.${N_C}"
else
    echo -e "${T_R}Updates available:${N_C}"
    echo "$updates"
    h1 Running System Update Script
    exe "bash update.sh"
fi

_install_file() {
    local file=$1
    h2 Reading packages from file: "$file"
    readarray -t packages <"$file"

    h2 Got packages:
    for package in "${packages[@]}"; do
        echo "$package"
    done

    for package in "${packages[@]}"; do
        _install_package "$package"
    done
}

_install_package() {
    local pkg=$1
    if [ "$pkg" = "-f" ]; then
        return
    fi

    h2 Checking if package is exists in repository
    if pamac search --quiet "$pkg" | grep -q "^$pkg"; then
        echo -e "${T_C}$pkg${N_C} exists in the repository."
        h2 Installing package "$pkg"
        exe "sudo pamac install $pkg --no-confirm"
    else
        echo -e "${B_R}$pkg${N_C} does not exist in the repository."
    fi
}

for param in "${@}"; do
    # shellcheck disable=SC1073
    if [ -f "$param" ]; then
        _install_file "$param"
    else
        _install_package "$param"
    fi
done

end
