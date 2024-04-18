#!/bin/bash
. exe.lib

h1 Time autosync
h2 Setting system clock auto sync...
exe "sudo timedatectl set-ntp true"
h2 show timedatectl status
exe "timedatectl status" -n
end