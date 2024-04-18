#!/bin/bash
. exe.lib

source_file=$1
target_file=$2
echo
echo -e "${B_W}Copying ${B_B}$source_file --> $target_file${N_C}"
exe "cp -fr $source_file $target_file && ls -la $source_file $target_file" "$@"