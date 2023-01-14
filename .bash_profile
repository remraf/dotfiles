# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:/opt/homebrew/opt/util-linux/bin:/opt/homebrew/bin:$HOME/.local/bin:$HOME/bin

export PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/tonyvo/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/tonyvo/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/tonyvo/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/tonyvo/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source /Users/tonyvo/.docker/init-bash.sh || true # Added by Docker Desktop

complete -C /opt/homebrew/bin/terraform terraform
