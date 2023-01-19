fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# path to your oh-my-zsh installation.
export ZSH="/home/leonardson/.oh-my-zsh"

# see https://github.com/ohmyzsh/ohmyzsh/wiki/themes
# ZSH_THEME="pure"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# my vars
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # this loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # this loads nvm bash_completion

# alias
alias ll='ls -lah'

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:"$HOME/.local/bin"

export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="/var/lib/flatpak/exports/bin:$PATH"
export PATH="/home/leonardson/.cargo/bin:$PATH"

# Keybinding in terminal ??????
bindkey -s '^f' 'tmux-sessionizer\n'
bindkey -s '^g' 'lazygit\n'

# FZF
source "$HOME/key-bindings.zsh"

if [ -f "$HOME/work" ]; then
  source "$HOME/work"
fi

export GPG_TTY=$(tty)
