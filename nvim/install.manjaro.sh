#!/bin/bash

. exe.lib

#Directories
CONFIG_DIR=$HOME/.config/nvim/

h1 "NEOVIM Installation and setup for Manjaro Linux"

h2 "Installing Neovim and Eco system..."
add neovim neovim-plug

h2 Making directory "$CONFIG_DIR"
exe "mkdir -pv $CONFIG_DIR"

slink "$CONFIGS_PATH/init.vim" "$CONFIG_DIR/init.vim" "Init.vim config"

h2 install plugins
exe "nvim -c 'PlugInstall' -c ':x' -c ':x'"
