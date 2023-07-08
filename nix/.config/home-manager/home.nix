{ config, pkgs, ... }:

{
  home.username = "leonardson";
  home.homeDirectory = "/home/leonardson";

  home.stateVersion = "23.05";

  home.packages = [
    pkgs.neovim
    pkgs.git
    pkgs.insomnia
    pkgs.spotify
    pkgs.zellij
    pkgs.lazygit

    # Because life can't be easy
    pkgs.grim
    pkgs.slurp
    pkgs.wl-clipboard
    pkgs.playerctl
    
    # linux utils replacements
    pkgs.fish
    pkgs.exa
    pkgs.bat
    pkgs.ripgrep
    pkgs.htop
    pkgs.light
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # You can also manage environment variables but you will have to manually
  # source
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/leonardson/etc/profile.d/hm-session-vars.sh
  #
  # if you don't want to manage your shell through Home Manager.
  home.sessionVariables = {
    EDITOR = "vim";
    NIXPKGS_ALLOW_UNFREE = 1;
  };

  programs.git = {
    enable = true;
    userName = "LeonardsonCC";
    userEmail = "leonardson.carvalho@gmail.com";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
