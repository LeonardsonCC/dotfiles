export ZSH=$HOME/.oh-my-zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

export HISTFILE=$HOME/.zsh/history/.zsh_history
export HISTSIZE=5000000
export SAVEHIST=5000000
setopt appendhistory
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

export EDITOR='nvim'

# PATH
export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:$HOME/go/bin/
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/aws-sam-cli/current/bin/

# ALIASES
alias zj=zellij
alias ls=exa
alias ll="exa -lah"
alias cat=bat
alias rg="rg --hidden --glob '!.git'"
# alias jq=gojq

# BINDINGS
bindkey -s '^G' 'lazygit^M'
bindkey -s '^F' 'tmux-sessionizer projects^M'
bindkey -s '^S' 'sess="$(tmux ls | fzf --height 40% | cut -d: --fields=1)"; tmux attach -t $sess^M'

# PLUGINS
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

zinit light zdharma/fast-syntax-highlighting
zinit light Aloxaf/fzf-tab

# source auxiliary files
for file in $HOME/.zsh/*.zsh; do
    source "$file"
done

# Variables
if [[ -f $HOME/.private ]]; then
  source $HOME/.private
fi
if [[ -f $HOME/work ]]; then
  source $HOME/work
fi

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# -- START ACTIVESTATE INSTALLATION
export PATH="/home/leonardson/.local/ActiveState/StateTool/release/bin:$PATH"
# -- STOP ACTIVESTATE INSTALLATION
# -- START ACTIVESTATE DEFAULT RUNTIME ENVIRONMENT
export PATH="/home/leonardson/.cache/activestate/bin:$PATH"
# -- STOP ACTIVESTATE DEFAULT RUNTIME ENVIRONMENT
# zoxide
eval "$(zoxide init zsh --cmd cd)"
