#!/bin/sh

print_date() {
	date "+%a %b %d  %H:%M" | tr '[:upper:]' '[:lower:]'
}

while true
do
	xsetroot -name "$(print_date)"
	sleep 1s
done
