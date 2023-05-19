# create_links.sh

## Description
This script creates symbolic links from user's home directory to their Work directory. The script checks if the directory in the home directory is a valid link or directory, and if it's empty or not. If the directory is a valid link, it checks if the link is broken or not. If the directory is empty, it will be removed, and if the target directory doesn't exist, it will be created. Finally, the script creates the symbolic link to the target directory in the Work directory.

## How it works
1. The script sets the directories to link as a variable.
2. The script loops through each directory to check if it's a valid link or directory and if it's empty or not.
3. If the directory is a valid link and not broken, it continues to the next directory.
4. If the directory is empty, it will be removed.
5. If the target directory doesn't exist, it will be created.
6. The script creates the symbolic link to the target directory in the Work directory.

## Usage
To run the script, open the terminal and navigate to the directory where the script is saved. Then, run the command:

```
./create_links.sh
```

Make sure the script has executable permission. If not, run the command:

```
chmod +x create_links.sh
```

The script will create symbolic links from the user's home directory to their Work directory for the specified directories.# Mount Work Disk Script

## Description
This script is used for mounting a disk labeled "Work" onto a directory within the user's home directory named "Work". It prompts the user to enter their sudo password and gives them the option to either mount the drive with default parameters or add a string to the /etc/fstab file.

## How it works
1. The script creates a directory named "Work" in the user's home directory.
2. It prompts the user to enter their sudo password.
3. The script uses the sudo command to run the blkid command and grep for the disk labeled "Work".
4. The drive name is extracted from the output and added to the parameters string.
5. The user is given the option to either mount the drive with default parameters or add a string to the /etc/fstab file.
6. If the user chooses to mount the drive, the script uses the sudo command to mount the drive with the specified file system and parameters.
7. If the user chooses to add a string to the /etc/fstab file, the script uses the sudo tee command to append the string to the file.
8. The script then checks the /etc/fstab file and verifies the mount with the findmnt command.

## Usage
To run the script, open a terminal window and navigate to the directory where the script is located. Then run the following command:

```
./mount_work_disk.sh
```

Follow the prompts to enter your sudo password and choose whether to mount the drive or add a string to the /etc/fstab file.

Modified: 05-18-2023 17:49:28


# Mount Work Disk Script

## Description
This script is used for mounting a disk labeled "Work" onto a directory within the user's home directory named "Work". It prompts the user to enter their sudo password and gives them the option to either mount the drive with default parameters or add a string to the /etc/fstab file.

## How it works
1. The script creates a directory named "Work" in the user's home directory.
2. It prompts the user to enter their sudo password.
3. The script uses the sudo command to run the blkid command and grep for the disk labeled "Work".
4. The drive name is extracted from the output and added to the parameters string.
5. The user is given the option to either mount the drive with default parameters or add a string to the /etc/fstab file.
6. If the user chooses to mount the drive, the script uses the sudo command to mount the drive with the specified file system and parameters.
7. If the user chooses to add a string to the /etc/fstab file, the script uses the sudo tee command to append the string to the file.
8. The script then checks the /etc/fstab file and verifies the mount with the findmnt command.

## Usage
To run the script, open a terminal window and navigate to the directory where the script is located. Then run the following command:

```
./mount_work_disk.sh
```

Follow the prompts to enter your sudo password and choose whether to mount the drive or add a string to the /etc/fstab file.

Modified: 05-18-2023 17:49:28
``
