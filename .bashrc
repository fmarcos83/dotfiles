#GIT Hacks
gitdiff()
{
    git diff "${@}" | colordiff
}

#setting edition options for bash
set -o vi
