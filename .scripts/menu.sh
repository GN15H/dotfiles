#!/bin/bash

choice=$(printf \
  "Clear Clipboard" \
| wofi --dmenu -c ~/.config/wofi/menu)

case "$choice" in
  Clear*)
    cliphist wipe
    ;;
esac
