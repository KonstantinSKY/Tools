# `first.sh`

This is a bash script that adds environment variables and rc aliases to `bashrc` and other rc files. It also adds a link string to the `.rc` files. 

## Usage

To use this script, simply execute it in your terminal by running:

```bash
./first.sh
```

## Modifications

Last modified on 2023-01-15 01:48:45 by Stan SKY <sky012877@gmail.com>.

## Script

```bash
#!/bin/bash

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
This script adds environment variables and my rc part to bashrc and to others ..rs files. It also creates simlinks to the ~/Work Directory.

## Usage
```
./first.sh
```

## Modified
2023-01-15 01:48:45# first.sh

## Description

This script named `first.sh` is used to add environment variables and rc aliases to `.bashrc`, `.zhsrc`, and `.zshrc` files. It also creates symbolic links to the `~/Work` directory. 

## How it works

The script starts by defining a list of files to be modified, setting a variable to an empty string for later use, and adding executable permission to the `rc.sh` file. After that, the `rc.sh` file is sourced, which adds additional environment variables and rc aliases. 

Next, a link string is defined, and the script adds this string to the `.rc` files. The script checks if the files exist and creates them if they do not. If the link string already exists, it will not be added again. 

Finally, the script waits for user input before creating symbolic links to the `~/Work` directory. The `create_links.sh` file is then sourced to create the symbolic links. 

## Usage

To use this script, simply run it in a terminal. The script will add environment variables and rc aliases to the `.rc` files and create symbolic links to the `~/Work` directory. 

```bash
./first.sh
```

## Modified

Last modified on 2023-01-15 01:48:45. 

Note: This script does not contain the full code of the script.# first.sh

## Description
This script is designed to add environment variables and rc aliases to .bashrc, .zhsrc, and .zshrc files. It also creates symbolic links to the ~/Work directory. The script is written in bash.

## How it works
1. The script sets the permissions of the rc.sh file as executable.
2. It sources the rc.sh file to add additional environment variables and rc aliases.
3. The script adds a link string to the .rc files.
4. It checks if the .rc files exist in the home directory, and if not, creates them.
5. The script creates symbolic links to the ~/Work directory.
6. The user is prompted to create simlinks to the ~/Work directory.

## Usage
To use this script, run it using the command: `./first.sh`. The script will execute and add the necessary environment variables and rc aliases to the .rc files. It will also create symbolic links to the ~/Work directory.