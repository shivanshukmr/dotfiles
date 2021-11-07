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

print_battery() {
	local status=$(cat /sys/class/power_supply/BAT*/status)
	if [ "$status" = "Charging" ]; then
		printf "*"
	fi
	printf "bat/%s%%  " "$(cat /sys/class/power_supply/BAT*/capacity)"
}

print_volume() {
	local volume="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
	if [ "$volume" -gt 0 ]; then
		printf "vol/${volume}  "
	else
		printf "mute  "
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
	xsetroot -name "$(print_network)$(print_battery)$(print_notification_status)$(print_date)"
	sleep 1s
done
