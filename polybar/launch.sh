#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
number_of_monitor=$(($(xrandr --query | grep " connected" | cut -d" " -f1 | wc -l)))
if [ $number_of_monitor -gt 1 ]; then
  for m in $(xrandr --query | grep -v eDP | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main -c "$DIR/config.ini" &
  done
else
  polybar --reload main -c "$DIR/config.ini" &
fi
