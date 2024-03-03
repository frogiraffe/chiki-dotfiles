#!/bin/bash

entries="output\narea\nwindow\nactive\nsave\nedit"

save_entries="output\narea\nwindow\nactive"
edit_entries="output\narea\nwindow\nactive"
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
    "edit")
        edit_selected=$(echo -e "$edit_entries" | wofi --show=dmenu)
        case $edit_selected in
            "output")
                grimshot save output - | swappy -f - ;;
            "area")
                grimshot save area - | swappy -f - ;;
            "window")
                grimshot save window - | swappy -f - ;;
            "active")
                grimshot save active - | swappy -f - ;;
        esac
    ;;
esac
