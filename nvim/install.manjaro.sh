#!/bin/bash

. exe.lib

#Directories
CONFIG_DIR=$HOME/.config/nvim/

h1 "NEOVIM Installation and setup for Manjaro Linux"

h2 "Installing Neovim and Eco system..."
add neovim neovim-plug

h2 Making directory "$CONFIG_DIR"
exe "mkdir -pv $CONFIG_DIR"

slink "$CONFIGS_PATH/init.vim" "$config/init.vim" "Init.vim config"

h2 install plugins
exe "nvim -c 'PlugInstall' -c ':x' -c ':x'"

# path=$PWD

# . upd.sh

# cd $path
# sudo pacman -S neovim

# echo "Installing vim-plug pluging manager for neovim ..."
# sudo pamac install neovim-plug
# pwd

# echo Set vimrc with 256 colors
# cp init.vim.256_colors init.vim

# read -p "Any key for setup nvim and install plugins" anykey
# echo Starting setup_nvim.sh
# . setup_nvim.sh
