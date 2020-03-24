### ZSH ###

# [oh-my-zsh]
export ZSH="$HOME/.oh-my-zsh"

# [Theme]
ZSH_THEME="clean"

# [Default User]
DEFAULT_USER="jieyouxu"

# [Case-Sensitive Completion]
# Uncomment the following line to use case-sensitive completion.
#CASE_SENSITIVE="true"

# [Hyphen-Sensitive Completion]
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# [Auto Update]
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# [Auto Update Frequency]
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# [List Directory Colors]
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# [Auto Terminal Title]
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# [Auto Correction]
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# [Wait Dots]
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# [VCS Untracked Files Marking]
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# [Timestamp Format]
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# [Custom ZSH Folder]
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# [oh-my-zsh Plugins]
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  colored-man-pages
  git
  git-extras
  osx
  urltools
  zsh-autosuggestions
  brew
  common-aliases
  git-flow
  last-working-dir
  urltools
)

# [ZSH Syntax Highlighting]
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# [oh-my-zsh]
source $ZSH/oh-my-zsh.sh

# Fancy process switch between `zsh` and `nvim` processes
# From https://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

### Man Pages ###

# [Man Path]
export MANPATH="/usr/local/man:$MANPATH"

### Language ###

# [Default Language Encoding]
export LANG="en_US.UTF-8"

### Default Editor ###

# [Default Editor]
export EDITOR='nvim'

### Compilation ###

# [Compilation Flags]
# export ARCHFLAGS="-arch x86_64"

### SSH ###

# [SSH Key Path]
# export SSH_KEY_PATH="~/.ssh/rsa_id"

### Aliases ###

# Use neovim instead of vim
alias vim="nvim"

# use `rmtrash` to move files into recycle bin
alias trash="rmtrash"
alias del="rmtrash"

# `zsh` aliases
alias zshconfig="open ~/.zshrc"
alias ohmyzsh="open ~/.oh-my-zsh"

# `ack` highlight alias
alias hlt="ack --passthru"

# `rmtrash` aliases
alias rm="rmtrash"
alias del="rmtrash"

# `sed` alternative with rust `sd`
alias sed="sd"

# hex viewer with rust `hexyl`
alias vhex="hexyl"

# queue tasks (serial/parallel) with rust `pueue`
alias queued="pueued -d" # run `pueue` daemon as background process
alias queue="pueue"
alias tasks"pueue"

# `time` alternative with rust `hyperfine`
alias time="hyperfine"

# `ls` alternative with rust `exa`
alias ls="exa"

# `ls -al` alternative with rust `exa`
alias l="exa --all --long"
alias dir="exa --all --long"

# `tree` alternative with rust `exa`
alias tree="exa --tree"

# Network monitor with rust `bandwhich`
alias network="bandwhich"

# `cat` alternative with rust `bat`
alias cat="bat"

### Python ###

# [Python Clear pycache]
pyclean () {
    find . -regex '.*\(__pycache__\|\.py[co]\)' -delete
}

### Default Shell ###
export SHELL="/usr/local/bin/zsh"

### Generic Binaries ###
export PATH="/usr/local/bin:$PATH"

### Homebrew ###

# [Homebrew Distribution]
export PATH="$PATH:/usr/local/sbin"

### Haskell / Stack, Cabal ###

# [Stack, Cabal]
#export PATH="$PATH:$HOME/.local/bin"

# [Cabal]
#export PATH="$PATH:$HOME/.cabal/bin"

### Sublime ###

# [Sublime Distribution]
export PATH="$PATH:$HOME/bin/"

### Java ###

# [Java Home]
#export JAVA_8_HOME="$(/usr/libexec/java_home -v 1.8)"
#export JAVA_10_HOME="$(/usr/libexec/java_home -v 10)"
#export JAVA_11_HOME="$(/usr/libexec/java_home -v 11)"
export JAVA_13_HOME="$(/usr/libexec/java_home -v 13)"

# [Java Version Aliases]
#alias java8="export JAVA_HOME=$JAVA_8_HOME"
#alias java10="export JAVA_HOME=$JAVA_10_HOME"
#alias java11="export JAVA_HOME=$JAVA_11_HOME"
alias java13="export JAVA_HOME=$JAVA_13_HOME"

# [Default Java Version]
java13

### Swift ###

# [Swift Distribution]
export PATH="$PATH:/usr/bin"

### LLVM ###

# [LLVM Distribution]
export PATH="$PATH:/usr/local/opt/llvm/bin"

### MySQL ###

# [MySQL Distribution]
#export PATH="$PATH:/usr/local/mysql/bin"
#export PATH="$PATH:/usr/local/mysql-shell/bin"

### Ruby ###

# [Ruby Environment]
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

### OCaml ###

# [Opam Configuration]
#test -r /Users/jieyouxu/.opam/opam-init/init.zsh && . /Users/jieyouxu/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

### QEMU ###

# [Default QEMU Target]
alias qemu="qemu-system-x86_64"

### PostgreSQL ###

# [PostgreSQL]
export PATH="/usr/local/opt/postgresql/bin:$PATH"

### Directory Aliases ###

# [Repository Alias]
alias cdrepos="cd ~/Documents/Repos"

# [University Documents Alias]
alias cducl="cd ~/Documents/University"

### `fzf` ###

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### Rust `zoxide` (`z` alternative) ###

eval "$(zoxide init zsh)"

clear
