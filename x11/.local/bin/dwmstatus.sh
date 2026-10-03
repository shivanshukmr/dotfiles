#!/bin/sh

print_padding() {
	printf "  "
}

# poll for monitor connection
hdmi_connected=false
xrandr_connect() {
	status=$(cat /sys/class/drm/card0-HDMI-A-1/status)

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

internet_status="/dev/shm/dwm_net_status_$$"
printf '0' > "$internet_status"
{
    while true; do
        ping -c 1 -W 1 8.8.8.8 >/dev/null 2>&1 && printf '1' > "$internet_status" || printf '0' > "$internet_status"
        sleep 5
    done
} &
ping_pid=$!

trap 'kill $ping_pid 2>/dev/null; rm -f "$internet_status"; exit' INT TERM EXIT

print_network() {
    interface=$(ip route get 8.8.8.8 2>/dev/null | sed -n 's/.*dev \([^ ]*\) .*/\1/p')
	status=$(rfkill -nro SOFT)

    if [ "$status" = "$(printf 'blocked\nblocked')" ]; then
        printf "flightmode" #  _
        print_padding
        return 0
    fi

    if [ -z "$interface" ] || [ ! -d /sys/class/net/$interface ] || [ `cat $internet_status` != '1' ]; then
        return 0
    fi

    if [ -d /sys/class/net/$interface/wireless ]; then
        ssid=$(iw "$interface" link | awk -F 'SSID: ' '/SSID/ {print $2}')
        printf "wifi/%s" "$ssid" #  _
        print_padding
    else
        printf $interface
        print_padding
    fi
}

print_wireless_ap() {
    pid=$(pidof hostapd)

    if [ -n "$pid" ]; then
        printf ""
        print_padding
    fi
}

print_bluetooth() {
	devices=$(bluetoothctl devices Connected | awk '{$1=$2=""; sub(/^  /, ""); print}' | paste -sd '/' -)

	if [ -n "$devices" ]; then
		printf "bt/%s" "$devices"
		print_padding
	fi
}

print_loadavg() {
	printf " %s" "$(awk '{print $1,$2,$3}' /proc/loadavg)"
	print_padding
}

print_battery() {
	status=$(cat /sys/class/power_supply/BAT*/status)
	battery=$(cat /sys/class/power_supply/BAT*/capacity)
	if [ "$status" = "Charging" ]; then
		printf "°"
	elif [ $battery -lt 21 ]; then
		printf "" # select 3rd color; output '\x03'
	fi
	printf "bat/%s%%" "$battery" #  _
	print_padding
}

print_volume() {
	sink=$(pactl get-default-sink)
	mute=$(pactl get-sink-mute "$sink" | awk '{print $2}')

	if [ "$mute" = "yes" ]; then
		printf "mute" #  _
	else
		volume=$(pactl get-sink-volume $sink | awk '{print $5}')
		printf "vol/%s" "$volume" #  _
	fi
	print_padding
}

print_notification_status() {
	status=$(dunstctl is-paused)
	if [ "$status" = "true" ]; then
		printf "silent"
		print_padding
	fi
}

print_date() {
	date "+%a %b %-d %l:%M %#p" | tr '[:upper:]' '[:lower:]'
}

while true
do
    xsetroot -name " $(print_notification_status)$(print_wireless_ap)$(print_network)$(print_bluetooth)$(print_volume)$(print_battery)$(print_date)"
	# xrandr_connect
    # 1s delay in print_network -> ping
	sleep 1s
done
