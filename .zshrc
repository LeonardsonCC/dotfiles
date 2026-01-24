export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bureau"
plugins=(git fzf-tab)

zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' menu no

source $ZSH/oh-my-zsh.sh

export DOTFILES="$HOME/dev/dotfiles"
export PATH="$DOTFILES/bin:$PATH"

alias ll="ls -lah"

export PATH="$HOME/.local/java/jdk-21/bin:$PATH"
export JAVA_HOME="$HOME/.local/java/jdk-21/"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

source /usr/share/nvm/init-nvm.sh

if [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
  source /usr/share/fzf/key-bindings.zsh
fi
