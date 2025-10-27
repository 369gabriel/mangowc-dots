#!/bin/bash

opcoes="󰐥  Shutdown\n  Reboot\n  Lock\n  Exit\n  Exit"

escolha=$(echo -e "$opcoes" | wofi --show dmenu --prompt "Power Menu" --width 300 --height 230)

case "$escolha" in
    "󰐥  Shutdown")
        poweroff
        ;;
    "  Reboot")
        reboot
        ;;
    "  Lock")
        swaylock
        ;;
    "  Exit")
        hyprctl dispatch exit
        ;;
    "  Exit")
        loginctl suspend
        ;;
    *)
        ;;
esac
