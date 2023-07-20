fish_add_path $HOME/.local/bin/
fish_add_path $HOME/go/bin
fish_add_path /usr/local/go/bin

if status is-interactive
  alias zj zellij
  
  alias ls exa
  alias ll "exa -lah"

  alias cat bat

  bind \cg lazygit
  bind \cf zj-sessionizer
end
