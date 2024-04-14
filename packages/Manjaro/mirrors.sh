#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Setup repo mirrors for packages                            #
############################################################################

# shellcheck disable=SC1091
source "$HOME"/.exe

h1 REPO MIRRORS UPDATE

h2 Showing mirrors status
exe "pacman-mirrors --status" --noconfirm

h2 Searching and updating fastests
exe "sudo pacman-mirrors --fasttrack"

h2 Showing New status of mirrors pool ...
exe "pacman-mirrors --status"

end 
