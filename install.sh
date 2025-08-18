#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

log() {
    echo "[INFO] $1"
}

error() {
    echo "[ERROR] $1" >&2
}

link_config() {
    local source_dir="$1"
    local target_dir="$2"
    local config_name="$3"
    
    local source_path="$SCRIPT_DIR/$source_dir"
    local target_path="$target_dir/$config_name"
    
    if [[ ! -d "$source_path" ]]; then
        error "Source directory $source_path does not exist"
        return 1
    fi
    
    if [[ -L "$target_path" ]]; then
        if [[ "$(readlink -f "$target_path")" == "$source_path" ]]; then
            log "$config_name is already linked correctly"
            return 0
        else
            log "$config_name symlink exists but points elsewhere, removing"
            rm "$target_path"
        fi
    elif [[ -e "$target_path" ]]; then
        log "$config_name exists, backing up to ${target_path}.backup"
        mv "$target_path" "${target_path}.backup"
    fi
    
    mkdir -p "$target_dir"
    
    log "Linking $config_name: $source_path -> $target_path"
    ln -sf "$source_path" "$target_path"
    
    if [[ -L "$target_path" && "$(readlink -f "$target_path")" == "$source_path" ]]; then
        log "Successfully linked $config_name"
        return 0
    else
        error "Failed to link $config_name"
        return 1
    fi
}

main() {
    log "Starting dotfiles installation..."
    log "Config directory: $CONFIG_HOME"
    
    link_config "ghostty" "$CONFIG_HOME" "ghostty"
    link_config "hypr" "$CONFIG_HOME" "hypr"
    link_config "tmux" "$CONFIG_HOME" "tmux"
    
    log "Installation complete!"
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main "$@"
fi
