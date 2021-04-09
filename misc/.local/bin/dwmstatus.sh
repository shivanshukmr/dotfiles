#!/bin/sh

dunst() {
	if $(dunstctl is-paused)
	then
		printf "dunst/P"
	fi
}

while true
do
	xsetroot -name "$(dunst)  $(date "+%a %b %d  %H:%M" | tr '[:upper:]' '[:lower:]')"
	sleep 1s
done
