#set default editor
export EDITOR='vim'
#GIT Hacks
gitdiff()
{
    git diff "${@}" | colordiff
}

#setting edition options for bash
set -o vi
#key bindings
# ^l clear screen
bind -m vi-insert "\C-l":clear-screen
