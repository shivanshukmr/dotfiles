#!/bin/sh

shot=~/Media/Pictures/Screenshots/$(date +%F_%T).png
maim -os > $shot || exit
if [ $(dunstify -i $shot -A open,open "Screenshot saved") = "open" ]; then
	sxiv $shot
fi
