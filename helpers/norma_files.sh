#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Renaming all files to normal                               #
############################################################################


# loop through all files in the current directory
for file in *; do
  # check if the file name contains special or space characters
  if [[ "$file" =~ [^a-zA-Z0-9._-] ]]; then
    # replace special and space characters with "_"
    new_file=$(echo "$file" | sed 's/[^a-zA-Z0-9._-]/_/g')
    # rename the file
    mv "$file" "$new_file"
  fi
done

