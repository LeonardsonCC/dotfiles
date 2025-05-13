#!/bin/bash

WALLPAPERS_DIR=/home/leonardson/repos/wallpapers/

WALLPAPER=$(find "$WALLPAPERS_DIR" -type f -not -path "*.git*" | shuf -n 1)

/home/leonardson/.local/bin/swww img "$WALLPAPER" --transition-type center
