#!/bin/bash
# Get the monitor name
MONITOR=$(xrandr --query | grep " connected" | cut -d ' ' -f1)

STATE_FILE="/tmp/hertz_state"

# If the state file does not exist, create it with a default value of 0
if [ ! -f $STATE_FILE ]; then
  echo "0" > $STATE_FILE
fi

# Read the current state
STATE=$(cat $STATE_FILE)

# Toggle the state and update the state file
if [ "$STATE" == "0" ]; then
  wlr-randr --output $MONITOR --custom-mode 1920x1080@60.00222
  echo "1" > $STATE_FILE
else
  wlr-randr --output $MONITOR --custom-mode 1920x1080@165.009995
  echo "0" > $STATE_FILE
fi
clear
