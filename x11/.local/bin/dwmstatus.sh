#!/bin/sh

print_padding() {
	printf "                              "
}

print_network() {
	interf=wlo1
	status=$(rfkill -nro SOFT)

	if [ "$status" = "`printf 'blocked\nblocked'`" ]; then
		printf "flightmode  "
	else
		if hash iw; then
			wifi=$(iw $interf link | grep SSID | sed 's,.*SSID: ,,')
			if [ "$wifi" ]; then
				printf "wifi/%s  " "$wifi"
			fi
		fi
	fi
}

print_battery() {
	local status=$(cat /sys/class/power_supply/BAT*/status)
	if [ "$status" = "Charging" ]; then
		printf "*"
	fi
	printf "bat/%s%%  " "$(cat /sys/class/power_supply/BAT*/capacity)"
}

print_volume() {
	local status=$(pactl get-sink-mute 0 | awk '{print $2}')
	if [ "$status" = "yes" ]; then
		printf "mute  "
	else
		local volume=$(pactl get-sink-volume 0 | awk '{print $5}')
		printf "vol/%s  " "$volume"
	fi
}

print_notification_status() {
	local status=$(dunstctl is-paused)
	if [ "$status" = "true" ]; then
		printf "silent  "
	fi
}

print_date() {
	date "+%a %b %d  %H:%M" | tr '[:upper:]' '[:lower:]'
}

while true
do
	xsetroot -name "$(print_padding)$(print_network)$(print_battery)$(print_volume)$(print_notification_status)$(print_date)"
	sleep 1s
done
