#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/bin:/Users/jieyouxu/.nvm/versions/node/v8.11.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/usr/local/CrossPack-AVR/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"
export JAVA_HOME="$(/usr/libexec/java_home -v 11)"
export PATH="$HOME/.deno/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

source ~/.bashrc
if [ -e /Users/jieyouxu/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/jieyouxu/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
