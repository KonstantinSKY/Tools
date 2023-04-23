# first.sh

## How it works

1. The script sets a variable `chmod_list` to an empty string.
2. It then executes the `rc.sh` file and adds additional environment variables and rc aliases.
3. The script then adds a link string to the `.rc` files so that the changes made in `rc.sh` are applied to them.
4. Finally, the script prompts the user to create simlinks to their `~/Work` directory and executes the `create_links.sh` file.

## Usage
To run the script, navigate to the directory where it is located and run the following command:

```
./first.sh
```

This will execute the script and perform the actions described in the "How it works" section.

**Note:** The script requires `rc.sh` and `create_links.sh` files to be present in the same directory.

## Modification
The last modification of this script was made on January 15th, 2023 at 01:48:45. 

**Author:** Stan SKY

**Email:** sky012877@gmail.com# first.sh

## Description 

This script is designed to add additional environment variables and rc aliases to bashrc and other rc files. It also adds a link string to rc files and creates simlinks to ~/Work Directory. 

## How it works 

1. The script sets the `chmod_list` variable to an empty string. 
2. It adds additional environment variables and rc aliases by executing `rc.sh` script. 
3. It adds a link string to rc files by setting the `link` variable to ". $TOOLS_PATH/rc.sh" and the `rc_files` variable to ".bashrc .zhsrc .zshrc". Then it loops through each rc file and checks if it exists or not. If the file exists, it adds the link string to the file. 
4. It asks for user input to create simlinks to ~/Work Directory. 
5. It executes `create_links.sh` script to create simlinks. 

## Usage 

To run this script, navigate to the directory containing `first.sh` file and execute the following command:

```
./first.sh
```

Note: Before running the script, make sure to set the `TOOLS_PATH` variable in `rc.sh` file to the path where your tools are installed. 

## Modified 

Last modified on 01-15-2023 01:48:45.# first.sh

## How it works

1. The script sets a variable `chmod_list` to an empty string.
2. It then makes `rc.sh` executable and sources it.
3. The script adds a link string to the `.rc` files listed in `rc_files`, which will source `rc.sh` when the user logs in.
4. Finally, the script prompts the user to create symbolic links to their `~/Work` directory and sources `create_links.sh`.

## Usage

To use this script, simply run:

```
./first.sh
```

This will add environment variables and rc aliases to your `.bashrc`, `.zhsrc`, and `.zshrc` files, as well as create symbolic links to your `~/Work` directory.