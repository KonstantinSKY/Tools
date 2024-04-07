#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Install packages from file list                            #
############################################################################

echo Install packets from official repository

./update.sh

readarray -t packages < $1


echo "Packages to be installed:"
printf '%s\n' "${packages[@]}"

for package in "${packages[@]}"; do
    read -p "Do you want to install $package? (y/n): " choice
    case "$choice" in
        y|Y )
            sudo pamac install "$package"
			if [ $? -eq 0 ]; then
                echo "Successfully installed OK $package"
            else
                echo "Failed to install! $package"
            fi
			echo ===========================================
			;;
        n|N )
            echo "Skipping installation of $package"
            ;;
        * )
            echo "Invalid choice, skipping installation of $package"
            ;;
    esac
done


