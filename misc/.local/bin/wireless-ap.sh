#!/bin/sh

if [ `id -u` -ne 0 ]; then
    echo "Run the script as root." >&2
    exit 1
fi

dir="/home/me/.config/misc/wireless-ap"
if [ ! -d $dir ]; then
    echo "$dir: directory not found" >&2
    exit 1
fi

internet0=$1 # enp4s0f3u1c2
ap0=$2       # wlo1

cleanup() {
    trap - EXIT

    pkill dnsmasq
    ip addr flush "$ap0"

    iptables -t nat -D POSTROUTING -o "$internet0" -j MASQUERADE
    iptables -D FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
    iptables -D FORWARD -i "$ap0" -o "$internet0" -j ACCEPT
}
trap cleanup EXIT INT TERM

ip addr add 10.0.0.1/24 dev "$ap0"

iptables -t nat -A POSTROUTING -o "$internet0" -j MASQUERADE
iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i "$ap0" -o "$internet0" -j ACCEPT

dnsmasq -C "$dir/dnsmasq.conf"
hostapd "$dir/hostapd.conf"
