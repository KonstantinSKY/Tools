#!/bin/bash

. exe.lib

BACKUPS_DIR="$BACKUPS_PATH/"
source_file=$1
target_file=${BACKUPS_PATH}$source_file.backup

# Check if the provided path is a symlink
if [ -L "$source_file" ]; then
    echo -e "$FAIL Can not backup symlink"
    ls -la "$source_file"
    return 1
fi
# Check if the backup file already exists and create a new file name if necessary
while [ -e "$target_file" ]; do
    target_file="$target_file.$(printf '%03d' "$count")"
    let count+=1
done

echo -e "${B_W}Backing up ${B_B}$source_file --> $target_file${N_C}"
copy "$source_file" "$target_file" "$@" -n
