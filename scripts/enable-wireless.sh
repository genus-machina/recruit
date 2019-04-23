#!/bin/bash -e

read -p "SSID: " SSID
read -s -p "Password: " PASSWORD
echo

cat >> /etc/wpa_supplicant/wpa_supplicant.conf <<EOF
country=US

network={
	ssid="${SSID}"
	psk="${PASSWORD}"
}
EOF
