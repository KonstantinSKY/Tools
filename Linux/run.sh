#!/bin/bash

RUN_DIR=$(dirname "$(readlink -f "$0")")
source "$RUN_DIR/exe.sh"

#directories
WORK_DIR="$HOME/Work"
TOOLS_DIR="$WORK_DIR/Tools"
CONFIGS_DIR="$WORK_DIR/Configs"

#scripts
MOUNT_SCR="mount_work_disk.sh"
EXE_SCR="$TOOLS_DIR/exe.sh"
CREATE_LINKS_SCR="$TOOLS_DIR/Linux/create_links.sh"
SETUP_RC="$TOOLS_DIR/Linux/setup_rc.sh"

#repositories
CONFIGS_REPO="https://github.com/KonstantinSKY/Configs.git"
TOOLS_REPO="https://github.com/KonstantinSKY/Tools.git"

h1 Linux after Instalation Setting

h2 Creating Work directory if not exists
exe "mkdir -p $WORK_DIR; ls -la $WORK_DIR"

h2 Starting mounting Work disk to Work Directory Script
exe ".$MOUNT_SCR"

h2 Cloning CONFIGS repository to "$CONFIGS_DIR"
exe "git clone $CONFIGS_REPO $CONFIGS_DIR"

h2 Cloning TOOLS repository to "$TOOLS_DIR"
exe "git clone $TOOLS_REPO $TOOLS_DIR"

# slink "$EXE_SCR" "$HOME"/.exe
h2 "Creating symbolic link $HOME/.exe --> $EXE_SCR"
exe "ln -sfv $EXE_SCR $HOME/.exe; readlink $HOME/.exe;"

h2 Runing Directory Symbolic Links Creator Script: "$CREATE_LINKS_SCR"
exe "bash $CREATE_LINKS_SCR"

h2 Running Setup rc files Script: "$SETUP_RC"
exe "bash $SETUP_RC"

h2 Removing RUN directory: "$SCRIPT_DIR"
exe "rm -rf $SCRIPT_DIR; ls"

h2 Reload Bash shell in the Terminal
exec bash
#end
