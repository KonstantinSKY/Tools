#!/bin/bash
. exe.lib

h1 ssh setup

slink "$HOME/Work/Security/ssh" "$HOME/.ssh" "to Security Megasync directory"

h2 Checkind GitHub ssh access
exe "ssh -T git@github.com" -n

h2 Checkind GitLab ssh access
exe "ssh -T git@gitlab.com" -n
