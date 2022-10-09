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

# Globus tab completion
if type globus > /dev/null 2>&1; then
    eval "$(globus --bash-completer)"
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
alias smbclient='smbclient -A ~/.ssh/smb -m SMB3 //storage1.ris.wustl.edu/tonyvo -c'

## OPTIONS
set -o ignoreeof
set -o noclobber
umask 027

## VARIABLES
CDPATH=:$HOME:$HOME/bin
EDITOR=/usr/bin/vim
PS1='\[\e]0;\u@\h:\l\a\]\[\e[33m\]\# \A \[\e[32m\][\[\e[36m\]\h\[\e[32m\]]\[\e[31m\]\[\e[0;33m\]\w\[\e[91m\]$(__git_ps1 "(%s)")\[\e[32m\]\$ \[\e[0m\]'
PS2='\[\e[32m\]+ \[\e[0m\]'

## LOCAL
export PASSWORD_STORE_DIR=/home/vov/git/password-store
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
export PASSWORD_STORE_GPG_OPTS='--trust-model always'
export PASSWORD_STORE_SIGNING_KEY='AFDBB223AD46A1AA73150B87AE4D82B1DDFA24F7 2EF7815E63A0C554FFF620E00AB0C7CBC4EEB8C7 CECC947D368B8ADE092D760952F58DDC4E68F98B C236BDF26AE894BAD4215AB60D73FFD53F8AC710'
GPG_TTY=$(tty)
export GPG_TTY
