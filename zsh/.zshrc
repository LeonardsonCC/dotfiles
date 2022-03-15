# path to your oh-my-zsh installation.
export ZSH="/home/leonardson/.oh-my-zsh"

# see https://github.com/ohmyzsh/ohmyzsh/wiki/themes
ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# my vars
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # this loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # this loads nvm bash_completion

export PATH="$HOME/.tfenv/bin:$PATH"

# alias
alias ll='ls -lah'


