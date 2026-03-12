#!/bin/bash
options="  Lock\n  Restart\n  Shutdown\n  Sleep"

chosen=$(echo -e "$options" | rofi -dmenu -p "power" -normal-window -theme ~/.config/rofi/teal.rasi)

case "$chosen" in
    "  Lock") loginctl lock-session ;;
    "  Restart") systemctl reboot ;;
    "  Shutdown") systemctl poweroff ;;
    "  Sleep") systemctl suspend ;;
esac
