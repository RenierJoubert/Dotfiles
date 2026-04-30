#!/bin/bash

# kill all bars 
killall -q polybar

# wait
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.1; done

# launch correct bar
polybar main -c ~/.config/polybar/config.ini &
