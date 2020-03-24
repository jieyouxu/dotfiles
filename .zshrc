# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### ZSH ###

# [oh-my-zsh]
export ZSH="$HOME/.oh-my-zsh"

# [Theme]
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# [Powerlevel10K]
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# [Config]
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
#POWERLEVEL9K_SHORTEN_DELIMITER=""
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# [Random Themes List]
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
  gradle
  httpie
  npm
  osx
  python
  urltools
  zsh-autosuggestions
  autojump
  brew
  common-aliases
  git-flow
  catimg
  last-working-dir
  urltools
  wd
  z
)

# [ZSH Syntax Highlighting]
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# [oh-my-zsh]
source $ZSH/oh-my-zsh.sh

### Deletion ###

# [Use rmtrash Instead of rm]
alias trash="rmtrash"
alias del="rmtrash"

### Man Pages ###

# [Man Path]
export MANPATH="/usr/local/man:$MANPATH"

### LaTeX ###

# [LaTeX Distribution]
export MATHPATH="$MANPATH:/usr/local/texlive/2019/texmf-dist/doc/man"
export INFOPATH="$INFOPATH:/usr/local/texlive/2019/texmf-dist/doc/info"
export PATH="$PATH:/usr/local/texlive/2019/bin/x86_64-darwin"

### Language ###

# [Default Language Encoding]
export LANG="en_US.UTF-8"

### Default Editor ###

# [Default Editor]
export EDITOR='code'

### Compilation ###

# [Compilation Flags]
# export ARCHFLAGS="-arch x86_64"

### SSH ###

# [SSH Key Path]
# export SSH_KEY_PATH="~/.ssh/rsa_id"

### Aliases ###

# [ZSH Aliases]
alias zshconfig="open ~/.zshrc"
alias ohmyzsh="open ~/.oh-my-zsh"

# [Ack Aliases]
alias hlt="ack --passthru"

### Python ###

# [Python Clear pycache]
pyclean () {
    find . -regex '.*\(__pycache__\|\.py[co]\)' -delete
}

### Generic Binaries ###
export PATH="/usr/local/bin:$PATH"

### Nano ###

# [Nano Distribution]
export PATH="$PATH:/usr/local/opt/ncurses/bin"

### Homebrew ###

# [Homebrew Distribution]
export PATH="$PATH:/usr/local/sbin"

### Haskell / Stack, Cabal ###

# [Stack, Cabal]
export PATH="$PATH:$HOME/.local/bin"

# [Cabal]
export PATH="$PATH:$HOME/.cabal/bin"

### Sublime ###

# [Sublime Distribution]
export PATH="$PATH:$HOME/bin/"

### Java ###

# [Java Home]
export JAVA_8_HOME="$(/usr/libexec/java_home -v 1.8)"
export JAVA_10_HOME="$(/usr/libexec/java_home -v 10)"
export JAVA_11_HOME="$(/usr/libexec/java_home -v 11)"
export JAVA_13_HOME="$(/usr/libexec/java_home -v 13)"

# [Java Version Aliases]
alias java8="export JAVA_HOME=$JAVA_8_HOME"
alias java10="export JAVA_HOME=$JAVA_10_HOME"
alias java11="export JAVA_HOME=$JAVA_11_HOME"
alias java13="export JAVA_HOME=$JAVA_13_HOME"

# [Default Java Version]
java13

### Swift ###

# [Swift Distribution]
export PATH="$PATH:/usr/bin"

### Flutter, Dart ###

# [Flutter Distribution]
export PATH="$PATH:$HOME/Documents/flutter/bin"

# [AngularDart]
export PATH="$PATH:$HOME/.pub-cache/bin"

### LLVM ###

# [LLVM Distribution]
export PATH="$PATH:/usr/local/opt/llvm/bin"

### MySQL ###

# [MySQL Distribution]
export PATH="$PATH:/usr/local/mysql/bin"
export PATH="$PATH:/usr/local/mysql-shell/bin"

### Ruby ###

# [Ruby Environment]
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

### OCaml ###

# [Opam Configuration]
test -r /Users/jieyouxu/.opam/opam-init/init.zsh && . /Users/jieyouxu/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

### QEMU ###

# [Default QEMU Target]
alias qemu="qemu-system-x86_64"

### PostgreSQL ###

# [PostgreSQL 11]
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"

### Directory Aliases ###

# [Repository Alias]
alias cdrepos="cd ~/Documents/Repos"

# [University Documents Alias]
alias cducl="cd ~/Documents/University"

# [BSc Computer Science Aliases]
BSC_Y1_DIR="~/Documents/University/BSc-Year-1"
BSC_Y2_DIR="~/Documents/University/BSc-Year-2"
BSC_Y3_DIR="~/Documents/University/BSc-Year-3"

# [BSc Computer Science Year 1 Aliases]
alias cdCOMP0002-C="cd $BSC_Y1_DIR/COMP0002/C"
alias cdCOMP0002-H="cd $BSC_Y1_DIR/COMP0002/Haskell"
alias cdCOMP0003-L="cd $BSC_Y1_DIR/COMP0003/Logic"
alias cdCOMP0003-A="cd $BSC_Y1_DIR/COMP0003/Automata"
alias cdCOMP0004="cd $BSC_Y1_DIR/COMP0004"
alias cdCOMP0005="cd $BSC_Y1_DIR/COMP0005"
alias cdCOMP0012="cd $BSC_Y1_DIR/COMP0012"
alias cdCOMP0147="cd $BSC_Y1_DIR/COMP0147"
alias cdENGF0001-C1="cd $BSC_Y1_DIR/ENGF0001/Challenge-1"
alias cdENGF0001-C2="cd $BSC_Y1_DIR/ENGF0001/Challenge-2"
alias cdENGF0002="cd $BSC_Y1_DIR/ENGF0002"

# [BSc Computer Science Year 2 Aliases]
alias cdCOMP0008="cd $BSC_Y2_DIR/COMP0008"
alias cdCOMP0009="cd $BSC_Y2_DIR/COMP0009"
alias cdCOMP0010="cd $BSC_Y2_DIR/COMP0010"
alias cdCOMP0011="cd $BSC_Y2_DIR/COMP0011"
alias cdCOMP0016="cd $BSC_Y2_DIR/COMP0016"
alias cdCOMP0141="cd $BSC_Y2_DIR/COMP0141"

clear
