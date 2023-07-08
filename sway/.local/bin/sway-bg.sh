#!/bin/bash

TIME_TO_CHANGE_WALLPAPER=3600

while :
do
  swaymsg "output * background $(find $HOME/wallpapers/ -type f | shuf -n 1) fill"
  sleep $TIME_TO_CHANGE_WALLPAPER
done
