#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/wallpapers"

# Pick a random wallpaper
WP=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) | shuf -n 1)
WP2=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) | shuf -n 1)

[ -z "$WP" ] && exit 1
[ -z "$WP2" ] && exit 1

# Preload and apply via hyprpaper
# hyprctl hyprpaper preload "$WP"
hyprctl hyprpaper wallpaper "DP-5,$WP, cover"
hyprctl hyprpaper wallpaper "DP-6,$WP2, cover"

# Optional: unload everything else to free memory
# hyprctl hyprpaper unload all
