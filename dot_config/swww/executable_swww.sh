#!/bin/bash

WALLPAPERS_DIR=~/repos/wallpapers/

WALLPAPER=$(find "$WALLPAPERS_DIR" -type f | shuf -n 1)

swww img "$WALLPAPER"
