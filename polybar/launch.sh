#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
itf=$(ip a | awk '/state UP/ {print $2}' | cut -d ":" -f1)
number_of_monitor=$(($(xrandr --query | grep " connected" | cut -d" " -f1 | wc -l)))
if [ $number_of_monitor -gt 1 ]; then
  for m in $(xrandr --query | grep -v eDP | grep " connected" | cut -d" " -f1); do
    NETWORK_ITF=$itf MONITOR=$m polybar --reload main -c "$DIR/config.ini" &
  done
else
  NETWORK_ITF=$itf polybar --reload main -c "$DIR/config.ini" &
fi
