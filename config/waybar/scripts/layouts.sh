#!/usr/bin/env bash
# ~/.config/waybar/scripts/layouts.sh
hyprctl activewindow -j \
  | jq -r '.[0].requestedLayout // "none"'