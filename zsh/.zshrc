# path to your oh-my-zsh installation.
export zsh="/home/leonardson/.oh-my-zsh"

# see https://github.com/ohmyzsh/ohmyzsh/wiki/themes
zsh_theme="pmcgee"

plugins=(git)

source $zsh/oh-my-zsh.sh

# my vars
export nvm_dir="$home/.nvm"
[ -s "$nvm_dir/nvm.sh" ] && \. "$nvm_dir/nvm.sh"  # this loads nvm
[ -s "$nvm_dir/bash_completion" ] && \. "$nvm_dir/bash_completion"  # this loads nvm bash_completion

export path=$path:/usr/local/go/bin

export path="$home/.tfenv/bin:$path"

# alias
alias ll='ls -lah'

autoload -u +x bashcompinit && bashcompinit
complete -o nospace -c /usr/bin/terraform terraform

