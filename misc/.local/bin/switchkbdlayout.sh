#!/bin/sh

cur_variant=$(setxkbmap -query | grep -e "variant:" | awk '{print $2}')

if [ "$cur_variant" = "" ]; then
	setxkbmap us dvp
	setxkbmap -option shift:both_capslock
else
	setxkbmap us
	setxkbmap -option shift:both_capslock
fi
setxkbmap -option shift:both_capslock
