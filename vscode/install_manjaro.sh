#!/bin/bash
source "$EXE"

#Directories
source_dir="$CONFIGS_PATH"
target_dir="$HOME/.config/'Code - OSS'/User"

#files
config_source="$source_dir/vscode.settings.json"
config_target="$target_dir/settings.json"

# keybind_sours="keybinding.json"

h1 Visual STudio Code install and setting

h2 Installing vscode

backup "$config_target"

h2 "Creating symbolic link for main config $config_target --> $config_source"
exe "ln -sf $config_source $config_target"

# h2 Creating symbolic link for key binding config "$target_dir"/$config to "$source_dir"/$config
# exe "ln -sf $source_dir/$config $target_dir/$config"
