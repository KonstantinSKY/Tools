#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Setup repos for packages                                   #
############################################################################

# shellcheck disable=SC1091
source "$HOME"/.exe

#config files
CONFIG=/etc/pamac.conf

#h1 "PAMAC & AUR (ADVANCED USER REPOSITORY) SETUP in $CONFIG"

#show $CONFIG

#backup $CONFIG --sudo

#enable_parameter "EnableAUR" $CONFIG "AUR"  --sudo



# h2 Enabling AUR
# exe "sudo sed -i 's/#EnableAUR/EnableAUR/' $CONFIG"
# echo Checking if the EnableAUR line is uncommented, if not, adding it
# if ! grep -q "^EnableAUR" $CONFIG; then
#     echo "EnableAUR" | sudo tee -a $CONFIG >/dev/null
# fi
# #

# h2 Enabling Check AUR Updates
# exe "sudo sed -i 's/#CheckAURUpdates/CheckAURUpdates/' $CONFIG"
# echo Checking if the CheckAURUpdates line is uncommented, if not, adding it
# if ! grep -q "^CheckAURUpdates" $CONFIG; then
#     echo "CheckAURUpdates" | sudo tee -a "$CONFIG" >/dev/null
# fi

# h2 Enabling RemoveUnrequiredDeps
# exe "sudo sed -i 's/#RemoveUnrequiredDeps/RemoveUnrequiredDeps/' $CONFIG"
# echo Checking if the CheckAURUpdates line is uncommented, if not, adding it
# if ! grep -q "^RemoveUnrequiredDeps" $CONFIG; then
#     echo "RemoveUnrequiredDeps" | sudo tee -a "$CONFIG" >/dev/null
# fi

# h2 Enabling NoUpdateHideIcon
# exe "sudo sed -i 's/#NoUpdateHideIcon/NoUpdateHideIcon/' $CONFIG"
# echo Checking if the CheckAURUpdates line is uncommented, if not, adding it
# if ! grep -q "^NoUpdateHideIcon" $CONFIG; then
#     echo "NoUpdateHideIcon" | sudo tee -a "$CONFIG" >/dev/null
# fi

# h2 Enabling NoUpdateHideIcon
# exe "sudo sed -i 's/#NoUpdateHideIcon/NoUpdateHideIcon/' $CONFIG"

# Checking_param() {
#     local param=$1
#     echo Checking if the "$param" line is uncommented, if not, adding it
#     if ! grep -q "^$param" $CONFIG; then
#         echo "$param" | sudo tee -a "$CONFIG" >/dev/null
#     fi
# }

# show Cheking pamac config for AUR ...
# exe "cat $CONFIG"

# end
