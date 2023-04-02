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

**Email:** sky012877@gmail.com