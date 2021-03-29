#!/bin/sh

dunst() {
	if $(dunstctl is-paused)
	then
		printf " P"
	else
		printf ""
	fi
}

while true
do
	xsetroot -name "$(dunst)$(date "+ %d %b %a %H:%M")"
	sleep 1s
done
