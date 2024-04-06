#!/bin/bash



echo LOADER for run.sh and additional packages for Linux Setting

echo Creating RUN directory...
mkdir -p RUN

echo Getting exe.sh
wget -p RUN/ https://raw.githubusercontent.com/KonstantinSKY/Tools/main/exe.sh

echo Getting run.sh ...
wget -p RUN/ https://raw.githubusercontent.com/KonstantinSKY/Tools/main/Linux/run_loader.sh

echo Getting mount_work_disk.sh
wget -p RUN/ https://raw.githubusercontent.com/KonstantinSKY/Tools/main/Linux/mount_work_disk.sh

ls -la RUN

echo  Deleting run_loader.sh ...
rm -f run_loader.sh

source RUN/exe.sh

h1 LINUX SETUP RUN
exe "bash RUN/run.sh" 

end
