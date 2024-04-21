#!/bin/bash

echo -e "\033[1;37m LOADER for Linux Ecosystem Setting \033[0m"

#directories
BIN_DIR=$HOME/.local/bin
WORK_DIR="$HOME/Work"
TOOLS_DIR="$WORK_DIR/Tools"
CONFIGS_DIR="$WORK_DIR/Configs"

#scripts
MOUNT_SCR="$BIN_DIR/mount_work_disk.sh"
EXE_LIB="$BIN_DIR/exe.lib"
LINKS_SCR="$TOOLS_DIR/Linux/create_links.sh"
SETUP_RC="$TOOLS_DIR/Linux/setup_rc.sh"

#repositories
CONFIGS_REPO="https://github.com/KonstantinSKY/Configs.git"
TOOLS_REPO="https://github.com/KonstantinSKY/Tools.git"

echo -e "\033[1;37m Creating ./local/bin directory if not exists \033[0m"
mkdir -pv "$BIN_DIR"
echo

echo -e "\033[1;37m Downloading exe.lib (executor Library) \033[0m"
wget -O "$EXE_LIB" https://raw.githubusercontent.com/KonstantinSKY/Tools/main/Linux/exe.lib.sh

# shellcheck disable=SC1091
. exe.lib

h2 Removing loader.sh
exe "rm -f loader.sh; ls loader.sh" -n

h1 Linux after Installation Setting

h2 Creating Work directory if not exists
exe "mkdir -pv $WORK_DIR; ls -la $WORK_DIR" -n

h2 "Getting mount_work_disk.sh and Starting Mounting script $MOUNT_SCR"
exe "wget -O $MOUNT_SCR https://raw.githubusercontent.com/KonstantinSKY/Tools/main/Linux/mount_work_disk.sh && bash $MOUNT_SCR"

h1 Cloning Repos
clone "$CONFIGS_REPO" "$CONFIGS_DIR"
clone "$TOOLS_REPO" "$TOOLS_DIR"

h1 Running Setting Scripts
run $SETUP_RC "Setup rc files"
run $LINKS_SCR "Create Symbolic Links"

h2 Reloading Bash shell in the Terminal and Exit
exec bash
#end
