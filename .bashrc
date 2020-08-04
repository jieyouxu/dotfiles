# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
