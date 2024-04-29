#!/bin/bash

. exe.lib

#Directories
target_dir="$HOME/.config/'Code - OSS'/User"

#files
config_source="$CONFIGS_PATH/vscode.settings.json"
config_target="$target_dir/settings.json"

h1 Visual STudio Code install and setting

h2 Installing vscode
add code

slink  "$config_source" "$config_target" "Main Vscode config"

h2 Set owner for code dir
exe "sudo chown -R $(whoami) /usr/lib/code"
