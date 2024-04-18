#!/bin/bash



echo LOADER for run.sh and additional packages for Linux Setting

echo Creating RUN directory...
mkdir -p RUN
echo ---

echo Getting exe.sh  shell script helper module
wget -O RUN/exe.sh https://raw.githubusercontent.com/KonstantinSKY/Tools/main/exe.sh
echo ---

# shellcheck disable=SC1091
source RUN/exe.sh

h2 Getting run.sh
exe "wget -O RUN/run.sh https://raw.githubusercontent.com/KonstantinSKY/Tools/main/Linux/run.sh" -n

h2 Getting mount_work_disk.sh
exe "wget -O RUN/mount_work_disk https://raw.githubusercontent.com/KonstantinSKY/Tools/main/Linux/mount_work_disk.sh" -n

h2 Showing RUN directory 
exe "ls -la RUN"

# h2 Set permission for exe.sh 
# exe "chmode 700"

h2 Removing run_loader.sh ...
exe "rm -f run_loader.sh; ls run_loader.sh"


h1 LINUX SETUP RUN
exe "bash RUN/run.sh" 


end
