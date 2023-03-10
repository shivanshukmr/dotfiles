#!/bin/sh

cur_variant=$(setxkbmap -query | grep -e "variant:" | awk '{print $2}')

if [ "$cur_variant" = "" ]; then
	setxkbmap us dvp
else
	setxkbmap us
fi
