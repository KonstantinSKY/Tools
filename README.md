# first.sh

## Description
This script adds environment variables and rc aliases to .bashrc, .zhsrc, and .zshrc files. It also creates symlink to "~/Work Directory" using another script named "create_links.sh".

## Usage
To run the script, navigate to the directory where the script is saved and execute the following command:

```
bash first.sh
```
Follow the on-screen prompts to complete the setup process.

## Authors
- Stan_SKY
- E-mail: sky012877@gmail.com
- Modified: 2023-01-15 01:48:45# first.sh

## Description
This script is used to add environment variables and rc aliases to bashrc and other rc files. It also adds a link string to the rc files for referencing. Additionally, it creates symbolic links to the ~/Work Directory. 

## Usage
To use this script, simply run `./first.sh` in the terminal. 

## Modification Time
This script was last modified on 2023-01-15 01:48:45.

## Script
```
#!/bin/bash

############################################################################
# Script name : first_setup.sh               Date   : 10/02/22             #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Add env vars and my rc part to bashrc and to others ..rs fi#
############################################################################
chmod_list=""

echo Adding additional environment variables an rc aliases
chmod +x rc.sh
. $PWD/rc.sh

link=". $TOOLS_PATH/rc.sh"
rc_files=".bashrc .zhsrc .zshrc"

echo Adding link string $link to .rc files ...
for file in $rc_files
    do
		echo $file

		file="$HOME/$file"
		echo Checking file $file...
		[ ! -f $file ] &&  touch $file || echo "$file found"

		echo Trying to add link to $file
        grep -q "$link"	$file && echo "The $file already has: $link" || echo $link >> $file
	done

read -r "Anykey for create simlinks to ~/Work Directory" anykey

. create_links.sh
```# first.sh

## Description

This script adds environment variables and rc aliases to bashrc and other rc files. It also creates simlinks to the ~/Work Directory.

## Usage

To run the script, navigate to the directory where the script is located and enter the following command:

```bash
./first.sh
```

## Modified

Last modified on 2023-01-15 01:48:45.

## Script

```bash
#!/bin/bash

############################################################################
# Script name : first_setup.sh               Date   : 10/02/22             #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Add env vars and my rc part to bashrc and to others ..rs fi#
############################################################################
chmod_list=""

echo Adding additional environment variables an rc aliases
chmod +x rc.sh
. $PWD/rc.sh

link=". $TOOLS_PATH/rc.sh"
rc_files=".bashrc .zhsrc .zshrc"

echo Adding link string $link to .rc files ...
for file in $rc_files
    do
		echo $file

		file="$HOME/$file"
		echo Checking file $file...
		[ ! -f $file ] &&  touch $file || echo "$file found"

		echo Trying to add link to $file
        grep -q "$link"	$file && echo "The $file already has: $link" || echo $link >> $file
	done

read -r "Anykey for create simlinks to ~/Work Directory" anykey

. create_links.sh
```# `first.sh`

## Description

This Bash script adds additional environment variables and rc aliases to the `.bashrc`, `.zhsrc` and `.zshrc` files. It also creates symbolic links to the `~/Work` directory using the `create_links.sh` script.

## Usage

1. Make sure you have the `rc.sh` and `create_links.sh` scripts in the same directory as `first.sh`.
2. Run the script using `./first.sh`.
3. Follow the prompts to add the necessary links and create the symbolic links to the `~/Work` directory.

## Modified

Script last modified on 2023-01-15 01:48:45. 

## Author

Script created by Stan SKY. For any inquiries, please contact sky012877@gmail.com.# first.sh

## Description
This script is designed to add environment variables and rc parts to bashrc and other rc files. It also creates symbolic links to the ~/Work directory. 

## Usage
1. Place the script in the desired location.
2. Run `chmod +x first.sh` to make the script executable.
3. Run `./first.sh` to execute the script.

## Modification
Last modified on January 15, 2023 at 01:48:45.

## Note
The code for `rc.sh` and `create_links.sh` are not included in this file.