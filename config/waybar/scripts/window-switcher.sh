#!/usr/bin/env bash
# ~/.config/waybar/scripts/window-switcher.sh

# Собираем список окон и передаём в wofi dmenu-подобный режим
hyprctl clients -j \
  | jq -r '.[] | "\(.workspace): \(.title)"' \
  | wofi --show window --dmenu
