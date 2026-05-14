#!/bin/bash
FILE=~/Downloads/Pictures/screenshot-$(date +%Y-%m-%d_%H-%M-%S).png
GEOM=$(slop) && maim -g "$GEOM" "$FILE" && xclip -selection clipboard -t image/png < "$FILE"
