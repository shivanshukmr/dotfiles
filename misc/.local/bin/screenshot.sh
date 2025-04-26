#!/bin/sh

ss_dir=~/Media/Pictures/Screenshots
shot=$ss_dir/$(date +%F_%T).png

mkdir -p $ss_dir
maim -os > $shot || exit
dunstify -i $shot -A "sxiv $shot,open" "Screenshot saved" | sh 2> /dev/null
