#!/bin/bash

# Get the new refresh rate from the user
new_refresh_rate=$1

# Set the new refresh rate
if [[ $new_refresh_rate == 165 ]]; then
  swaymsg output "*" mode 1920x1080@165.010Hz
  swaymsg output "*" disable
  swaymsg output "*" enable
else
  swaymsg output "*" mode 1920x1080@60.004Hz
fi


