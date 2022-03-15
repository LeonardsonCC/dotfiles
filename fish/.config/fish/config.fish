if status is-interactive
    # Commands to run in interactive sessions can go here
    
    # PATH variables
    fish_add_path -ag ~/dev/test

    # Source private config file if exists
    if not test -e ~/.env.fish
      touch ~/.env.fish
    end
    source ~/.env.fish
end
