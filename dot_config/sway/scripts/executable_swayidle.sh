#!/bin/bash

swayidle \
	timeout 240 'swaylock -C ~/.config/swaylock/gruv.conf' \
	before-sleep 'swaylock -C ~/.config/swaylock/gruv.conf'
