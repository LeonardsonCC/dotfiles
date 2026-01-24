# Dotfiles

Bootstrap instructions and basic requirements for this setup.

## Quick start

```bash
git clone <repo-url> ~/dev/dotfiles
~/dev/dotfiles/bin/bootstrap
```

Then restart your shell or run:

```bash
source ~/.zshrc
```

## What the bootstrap does

- Symlinks `~/.zshrc` to the repo version.
- Symlinks `~/.gitconfig` to the repo version.
- Symlinks each top-level directory in `.config` into `~/.config`.
- Runs `bin/link-dotfiles` to handle file-level links.
- Installs the `fzf-tab` plugin for Oh My Zsh if missing.

## Maintenance rule

Whenever you change or add any dotfile (including via AI agents), update both:

- `bin/bootstrap` (to keep setup steps accurate)
- this `README.md` (to reflect the current requirements and steps)

## Required tools

- zsh
- Oh My Zsh
- fzf
- git

## Optional tools

- neovim (LazyVim config lives in `.config/nvim`)
- zellij (config in `.config/zellij`)
- sway (config in `.config/sway`)
- lazygit
- ghostty (config in `.config/ghostty`)
