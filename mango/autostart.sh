#!/bin/sh

dunst &
pipewire&
rfkill unblock bluetooth&
waybar -c ~/.config/mango/config.jsonc -s ~/.config/mango/style.css >/dev/null 2>&1 &
swaybg -i ~/Wallpapers/gato.png >/dev/null 2>&1 &
kanshi&
