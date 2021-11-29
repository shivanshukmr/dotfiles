#!/bin/sh

shot=~/Media/Pictures/Screenshots/$(date +%F_%T).png
maim -os > $shot || exit
dunstify -i $shot -A "sxiv $shot,open" "Screenshot saved" | sh 2> /dev/null
