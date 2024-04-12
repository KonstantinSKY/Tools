#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Short comand to create Archive .bzip2                      #
############################################################################
source_file=$1
[ ${source_file: -1} == "!" ] && source_file=${source_file:: -1}


target_file=$source_file.tar.bz2
echo Extractind archive to $target_file
tar cvfj $target_file $source_file
echo Size of $target_file, kbytes:
tar czf - $target_file | wc -c

echo Verifying created archive for difference
tar df $target_file

echo Done!
