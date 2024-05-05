#!/bin/bash

# Get the new refresh rate from the user
new_refresh_rate=$1

# Set the new refresh rate
if [[ $new_refresh_rate == 165 ]]; then
    hyprctl keyword monitor preferred,1920x1080@165.009995,1
    hyprctl dispatch dpms off
    hyprctl dispatch dpms on
else
    hyprctl keyword monitor eDP-1,1920x1080@60.0.5002,0x0,1
fi
