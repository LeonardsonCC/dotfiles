#!/bin/sh

#!/usr/bin/env dash

# Date
date=$(date "+%a %F %R")

# # CPU temp
# cpu=$(sensors | grep "Package" | cut -f 1-3,5 -d " ")

# Alsa master volume
volume=$(amixer get Master | grep "Right:" | cut -f 7,8 -d " ")

# Battery
battery_percentage=$(cat /sys/class/power_supply/BAT0/capacity)
battery_status=$(cat /sys/class/power_supply/BAT0/status)

# Status bar
echo "Bat: $battery_percentage ($battery_status) | Vol: $volume | $date"
