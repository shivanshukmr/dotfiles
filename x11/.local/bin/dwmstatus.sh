#!/bin/sh

padding="  "

print_ssid() {
	interf=wlo1
	status=$(rfkill -nro SOFT)

	if [ "$status" = "`printf 'blocked\nblocked'`" ]; then
		printf "flightmode"
		printf "$padding"
	else
		if hash iw; then
			wifi=$(iw $interf link | grep SSID | sed 's,.*SSID: ,,')
			if [ "$wifi" ]; then
				printf "%s" "$wifi"
				printf "$padding"
			fi
		fi
	fi
}

print_bluetooth() {
	device=$(bluetoothctl devices Connected | cut -c26-)

	if [ "$device" ]; then
		printf "%s" "$device"
		printf "$padding"
	fi
}

print_loadavg() {
	printf "L:%s" "$(awk '{print $1,$2,$3}' /proc/loadavg)"
	printf "$padding"
}

print_battery() {
	local status=$(cat /sys/class/power_supply/BAT*/status)
	local battery=$(cat /sys/class/power_supply/BAT*/capacity)
	if [ "$status" = "Charging" ]; then
		printf "*"
	elif [ $battery -lt 21 ]; then
		printf "" # select 3rd color; output '\x03'
	fi
	printf "B:%s%%" "$battery"
	printf "$padding"
}

print_volume() {
	local sink=$(pactl get-default-sink)
	local status=$(pactl get-sink-mute $sink | awk '{print $2}')
	if [ "$status" = "yes" ]; then
		printf "mute"
	else
		local volume=$(pactl get-sink-volume $sink | awk '{print $5}')
		printf "V:%s" "$volume"
	fi
	printf "$padding"
}

print_notification_status() {
	local status=$(dunstctl is-paused)
	if [ "$status" = "true" ]; then
		printf "silent"
		printf "$padding"
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
