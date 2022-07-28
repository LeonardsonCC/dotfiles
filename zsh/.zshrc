# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:"$HOME/.local/bin"
#
# FZF
source "$HOME/key-bindings.zsh"

# eval "$(goenv init -)"
# export GOENV_ROOT="$HOME/.goenv"
# export PATH="$GOENV_ROOT/bin:$PATH"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="/var/lib/flatpak/exports/bin:$PATH"
export PATH="/home/leonardson/.cargo/bin:$PATH"

alias em="emacsclient -c -a 'emacs'"

# Arch user sucks
[ ! -x /usr/bin/yay ] && [ -x /usr/bin/paru ] && alias yay='paru'

