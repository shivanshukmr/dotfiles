#!/bin/sh

# poll for monitor connection
hdmi_connected=false
xrandr_connect() {
	local status=$(cat /sys/class/drm/card0-HDMI-A-1/status)

	if [ "$status" = "connected" ]; then
		if [ "$hdmi_connected" = false ]; then
			xrandr --auto --output HDMI-A-0 --mode 1920x1080 --right-of eDP
			hdmi_connected=true
		fi
	elif [ "$hdmi_connected" = true ]; then
		xrandr --auto
		hdmi_connected=false
	fi
}

print_padding() {
	printf "  "
}

print_ssid() {
	local interf=wlo1
	local status=$(rfkill -nro SOFT)

	if [ "$status" = "`printf 'blocked\nblocked'`" ]; then
		printf "flightmode"
		print_padding
	else
		if hash iw; then
			local wifi=$(iw $interf link | grep SSID | sed 's,.*SSID: ,,')
			if [ "$wifi" ]; then
				printf " %s" "$wifi"
				print_padding
			fi
		fi
	fi
}

print_bluetooth() {
	local device=$(bluetoothctl devices Connected | cut -c26-)

	if [ "$device" ]; then
		printf "%s" "$device"
		print_padding
	fi
}

print_loadavg() {
	printf " %s" "$(awk '{print $1,$2,$3}' /proc/loadavg)"
	print_padding
}

print_battery() {
	local status=$(cat /sys/class/power_supply/BAT*/status)
	local battery=$(cat /sys/class/power_supply/BAT*/capacity)
	if [ "$status" = "Charging" ]; then
		printf "°"
	elif [ $battery -lt 21 ]; then
		printf "" # select 3rd color; output '\x03'
	fi
	printf " %s%%" "$battery"
	print_padding
}

print_volume() {
	local sink=$(pactl get-default-sink)
	local status=$(pactl get-sink-mute $sink | awk '{print $2}')
	if [ "$status" = "yes" ]; then
		printf ""
	else
		local volume=$(pactl get-sink-volume $sink | awk '{print $5}')
		printf " %s" "$volume"
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
	xrandr_connect

	sleep 1s
done
