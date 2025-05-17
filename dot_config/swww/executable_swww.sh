#!/bin/bash

WALLPAPERS_DIR=/home/leonardson/repos/wallpapers/

WALLPAPER=$(find "$WALLPAPERS_DIR" -type f -not -path "*.git*" | shuf -n 1)

while ! swww query &> /dev/null; do
    echo "waiting..."
    sleep 1
done

swww img "$WALLPAPER" --transition-type center
