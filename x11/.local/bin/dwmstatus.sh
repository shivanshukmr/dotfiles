#!/bin/sh

print_padding() {
	printf "  "
}

print_ssid() {
	interf=wlo1
	status=$(rfkill -nro SOFT)

	if [ "$status" = "`printf 'blocked\nblocked'`" ]; then
		printf "flightmode"
		print_padding
	else
		if hash iw; then
			wifi=$(iw $interf link | grep SSID | sed 's,.*SSID: ,,')
			if [ "$wifi" ]; then
				printf "%s" "$wifi"
				print_padding
			fi
		fi
	fi
}

print_bluetooth() {
	device=$(bluetoothctl paired-devices | cut -f2 -d ' '|
		while read -r uuid
		do
			info=`bluetoothctl info $uuid`
			echo "$info" | grep -e "Name\|Connected: yes" | grep -B1 "yes" | head -n 1 | awk '{$1="";print $0}' | sed 's/^ //'
		done)

	if [ "$device" ]; then
		printf "%s" "$device"
		print_padding
	fi
}

print_loadavg() {
	printf "L:%s" "$(awk '{print $1,$2,$3}' /proc/loadavg)"
	print_padding
}

print_battery() {
	local status=$(cat /sys/class/power_supply/BAT*/status)
	if [ "$status" = "Charging" ]; then
		printf "*"
	fi
	printf "B:%s%%" "$(cat /sys/class/power_supply/BAT*/capacity)"
	print_padding
}

print_volume() {
	local status=$(pactl get-sink-mute 0 | awk '{print $2}')
	if [ "$status" = "yes" ]; then
		printf "mute"
	else
		local volume=$(pactl get-sink-volume 0 | awk '{print $5}')
		printf "V:%s" "$volume"
	fi
	print_padding
}

print_notification_status() {
	local status=$(dunstctl is-paused)
	if [ "$status" = "true" ]; then
		printf "silent"
		print_padding
	fi
}

print_date() {
	date "+%a %b %d  %R"
}

while true
do
	xsetroot -name " $(print_ssid)$(print_bluetooth)$(print_loadavg)$(print_battery)$(print_volume)$(print_notification_status)$(print_date)"
	sleep 1s
done
