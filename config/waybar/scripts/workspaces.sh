#!/usr/bin/env bash
# ~/.config/waybar/scripts/workspaces.sh
hyprctl workspaces -j \
  | jq -r '.[] | (if .focused then "*" else " ") + " WS" + (.id|tostring)' \
  | tr "\n" " "