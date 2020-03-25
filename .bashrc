# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Default $SHELL to fish
if [ -f /usr/local/shell/fish ]; then
	export SHELL="fish"
fi

# Be nice to sysadmins
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
elif [ -f /etc/bash.bashrc ]; then
	source /etc/bash.bashrc
fi

# History management
export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTIGNORE="clear:bg:fg:cd:cd -:cd ..:exit:date:w:* --help:ls:l:ll:lll"

# Use `fzf`
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Use `zoxide`
eval "$(zoxide init bash)"

# Use `starship` prompt
eval "$(starship init bash)"
