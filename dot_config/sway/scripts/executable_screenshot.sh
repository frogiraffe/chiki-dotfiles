#!/bin/bash

entries="output\narea\nwindow\nactive\nsave"

save_entries="output\narea\nwindow\nactive"
selected=$(echo -e "$entries" | wofi --show=dmenu)

case $selected in
    "output")
        grimshot copy output;;
    "area")
        grimshot copy area;;
    "window")
        grimshot copy window;;
    "active")
        grimshot copy active;;
    "save")
        save_selected=$(echo -e "$save_entries" | wofi --show=dmenu)
        case $save_selected in
            "output")
                grimshot save output;;
            "area")
                grimshot save area;;
            "window")
                grimshot save window;;
            "active")
                grimshot save active;;
        esac
    ;;
esac

