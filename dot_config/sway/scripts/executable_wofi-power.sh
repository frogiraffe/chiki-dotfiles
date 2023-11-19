#!/bin/bash

entries="⇠ Logout\n⏾ Suspend\n⭮ Reboot\n󱣻 Hibernate\n⏻ Shutdown"

selected=$(pgrep -x wofi >/dev/null 2>&1 && killall wofi || echo -e $entries|wofi --width 250 --height 210 --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    swaymsg exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  hibernate)
    exec systemctl hibernate;;
  shutdown)
    exec systemctl poweroff -i;;
esac
