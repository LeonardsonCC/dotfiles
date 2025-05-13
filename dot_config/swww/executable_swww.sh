#!/bin/bash

WALLPAPERS_DIR=~/repos/wallpapers/

WALLPAPER=$(find "$WALLPAPERS_DIR" -type f -not -path "*.git*" | shuf -n 1)

swww img "$WALLPAPER"
