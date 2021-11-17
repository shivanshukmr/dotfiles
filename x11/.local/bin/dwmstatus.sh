#!/bin/sh

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

print_bluetooth() {
	device=$(bluetoothctl paired-devices | cut -f2 -d ' '|
		while read -r uuid
		do
			info=`bluetoothctl info $uuid`
			echo "$info" | grep -e "Name\|Connected: yes" | grep -B1 "yes" | head -n 1 | cut -f2 -d ' '
		done)

	if [ "$device" ]; then
		printf "bluetooth/%s  " "$device"
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
	local status=$(pactl get-sink-mute 0 | cut -f2 -d ' ')
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
	xsetroot -name " $(print_network)$(print_bluetooth)$(print_battery)$(print_volume)$(print_notification_status)$(print_date)"
	sleep 1s
done
