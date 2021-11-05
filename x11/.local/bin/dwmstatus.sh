#!/bin/sh

print_network() {
	if=wlo1
	if hash iw
	then
		wifi=$(iw $if link | grep SSID | sed 's,.*SSID: ,,')
		if [ "$wifi" ]
		then
			echo "wifi/$wifi"
		fi
	fi
}

print_battery() {
	echo "bat/$(cat /sys/class/power_supply/BAT0/capacity)%"
}

print_volume() {
	volume="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
	if test "$volume" -gt 0
	then
		echo -e "vol/${volume}"
	else
		echo -e "mute"
	fi
}

print_date() {
	date "+%a %b %d  %H:%M" | tr '[:upper:]' '[:lower:]'
}

while true
do
	xsetroot -name "$(print_network)  $(print_battery)  $(print_date)"
	sleep 1s
done
