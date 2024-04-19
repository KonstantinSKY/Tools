#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Setup repos for packages                                   #
############################################################################

# shellcheck disable=SC1091
. exe.lib

#config files
CONFIG=/etc/pamac.conf

h1 "PAMAC & AUR (ADVANCED USER REPOSITORY) SETUP in $CONFIG"
exit_if_not_file "$CONFIG"
show $CONFIG
backup $CONFIG --sudo

enable_parameter "EnableAUR" $CONFIG "Allow Pamac to search and install packages from AUR"  --sudo
enable_parameter "CheckAURUpdate" $CONFIG "When AUR support is enabled check for updates from AUR"  --sudo
enable_parameter "RemoveUnrequiredDeps" $CONFIG "When removing a package, also remove those dependencies that are not required by other packages (recurse option)"  --sudo
enable_parameter "NoUpdateHideIcon" $CONFIG "When no update is available, hide the tray icon"  --sudo
enable_parameter "DownloadUpdates" $CONFIG "Download updates in background"  --sudo
