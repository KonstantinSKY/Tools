#!/bin/bash



echo LOADER for run.sh and additional packages for Linux Setting

echo Creating RUN directory...
mkdir -p RUN
echo ---

echo Getting exe.sh
wget -O RUN/exe.sh https://raw.githubusercontent.com/KonstantinSKY/Tools/main/exe.sh
echo ---

echo Getting run.sh ...
wget -O RUN/run.sh https://raw.githubusercontent.com/KonstantinSKY/Tools/main/Linux/run.sh
echo ---

echo Getting mount_work_disk.sh
wget -O RUN/mount_work_disk https://raw.githubusercontent.com/KonstantinSKY/Tools/main/Linux/mount_work_disk.sh
scho ---

ls -la RUN
echo ---

echo  Deleting run_loader.sh ...
rm -f run_loader.sh; ls run_loader.sh
echo ---

source RUN/exe.sh

h1 LINUX SETUP RUN
exe "bash RUN/run.sh" 

end
