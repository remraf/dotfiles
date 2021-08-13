# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source local definitions
if [[ -d ~/.local/bin ]]; then
    for FILE in ~/.local/bin/*; do
        source $FILE
    done
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

## ALIASES
alias cp='cp -i'
alias dir='ls -Falvh'
alias dirs='dirs -v'
alias emacs='emacs -nw'
alias mv='mv -i'

## OPTIONS
set -o ignoreeof
set -o noclobber
umask 027

## VARIABLES
CDPATH=:$HOME:$HOME/bin
EDITOR=/usr/bin/vim
PS1='\[\e]0;\u@\h:\l\a\]\[\e[33m\]\# \A \[\e[32m\][\[\e[36m\]\h\[\e[32m\]]\[\e[31m\]\[\e[0;33m\]\w\[\e[91m\]$(__git_ps1 "(%s)")\[\e[32m\]\$ \[\e[0m\]'
PS2='\[\e[32m\]+ \[\e[0m\]'
TERM=xterm-256color
