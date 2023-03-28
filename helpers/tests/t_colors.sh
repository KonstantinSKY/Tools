#!/bin/bash

############################################################################
# Script name : t_color.sh                  Date   : 2023-03-27            #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : This script tests the color codes used in bash scripting.  #
############################################################################

. colors.sh

# Test T_Black
if [[ "$T_Black" != "\033[0;30m" ]]; then
    echo "Error: T_Black not defined correctly"
    exit 1
else
    echo "T_Black defined correctly"
fi

# Test T_R
if [[ "$T_R" != "\033[0;31m" ]]; then
    echo "Error: T_R not defined correctly"
    exit 1
else
    echo "T_R defined correctly"
fi

# Test T_G
if [[ "$T_G" != "\033[0;32m" ]]; then
    echo "Error: T_G not defined correctly"
    exit 1
else
    echo "T_G defined correctly"
fi

# Test T_Y
if [[ "$T_Y" != "\033[0;33m" ]]; then
    echo "Error: T_Y not defined correctly"
    exit 1
else
    echo "T_Y defined correctly"
fi

# Test T_B
if [[ "$T_B" != "\033[0;34m" ]]; then
    echo "Error: T_B not defined correctly"
    exit 1
else
    echo "T_B defined correctly"
fi

# Test T_P
if [[ "$T_P" != "\033[0;35m" ]]; then
    echo "Error: T_P not defined correctly"
    exit 1
else
    echo "T_P defined correctly"
fi

# Test T_C
if [[ "$T_C" != "\033[0;36m" ]]; then
    echo "Error: T_C not defined correctly"
    exit 1
else
    echo "T_C defined correctly"
fi

# Test T_W
if [[ "$T_W" != "\033[0;37m" ]]; then
    echo "Error: T_W not defined correctly"
    exit 1
else
    echo "T_W defined correctly"
fi

# Test B_Black
if [[ "$B_Black" != "\033[1;30m" ]]; then
    echo "Error: B_Black not defined correctly"
    exit 1
else
    echo "B_Black defined correctly"
fi

# Test B_R
if [[ "$B_R" != "\033[1;31m" ]]; then
    echo "Error: B_R not defined correctly"
    exit 1
else
    echo "B_R defined correctly"
fi

# Test B_G
if [[ "$B_G" != "\033[1;32m" ]]; then
    echo "Error: B_G not defined correctly"
    exit 1
else
    echo "B_G defined correctly"
fi

# Test B_Y
if [[ "$B_Y" != "\033[1;33m" ]]; then
    echo "Error: B_Y not defined correctly"
    exit 1
else
    echo "B_Y defined correctly"
fi

# Test B_B
if [[ "$B_B" != "\033[1;34m" ]]; then
    echo "Error: B_B not defined correctly"
    exit 1
else
    echo "B_B defined correctly"
fi

# Test B_P
if [[ "$B_P" != "\033[1;35m" ]]; then
    echo "Error: B_P not defined correctly"
    exit 1
else
    echo "B_P defined correctly"
fi

if [[ "$B_C" != "\033[1;36m" ]]; then
    echo "Error: B_C not defined correctly"
    exit 1
else
    echo "B_C defined correctly"
fi
