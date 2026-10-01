#!/bin/bash

choice=$(printf \
  " Menu\n\
Lock\n\
Reboot\n\
Shutdown" \
| wofi -c ~/.config/wofi/power_menu -s ~/.config/wofi/power_menu_style.css)

case "$choice" in
  Lock)
    hyprlock
    ;;
  *Menu)
    ~/.scripts/menu.sh 
    ;;
  Reboot)
    hyprshutdown -t "Restarting..." --post-cmd "reboot"
    ;;
  Shutdown)
    hyprshutdown -t "Shutting down..." --post-cmd "poweroff"
    ;;
esac
