#!/bin/bash

SELECTION="$(printf "󰐥  Shutdown\n󰜉  Reboot\n󰈆  Logout" | vicinae dmenu --no-section -W 300 -H 200)" || exit 0

case $SELECTION in
  *Shutdown*) systemctl poweroff ;;
  *Reboot*) systemctl reboot ;;
  *Logout*) hyprctl dispatch exit ;;
esac
