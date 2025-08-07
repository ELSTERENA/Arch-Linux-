#!/usr/bin/env bash
# ~/.config/waybar/scripts/brightness.sh
max=$(cat /sys/class/backlight/*/max_brightness)
cur=$(cat /sys/class/backlight/*/brightness)
perc=$(( cur * 100 / max ))
echo "盛 ${perc}%"