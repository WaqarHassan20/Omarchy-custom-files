#!/bin/bash

iface="wlan0"

# Get SSID (empty if not connected)
ssid=$(iw dev "$iface" link | awk -F': ' '/SSID/ {print $2}')
connected=1

if [ -z "$ssid" ]; then
    ssid="Disconnected"
    connected=0
fi

# Get signal strength
signal=$(awk 'NR==3 {print int($3)}' /proc/net/wireless 2>/dev/null)
signal=${signal:-0}

# ICON LOGIC (easy to edit)
if [ "$connected" -eq 0 ]; then
    icon=" 󰤭 "   # offline icon
elif [ "$signal" -ge 75 ]; then
    icon=" 󰤨 "
elif [ "$signal" -ge 50 ]; then
    icon=" 󰤥 "
elif [ "$signal" -ge 25 ]; then
    icon=" 󰤢 "
else
    icon=" 󰤟 "
fi

# Speed calculation
rx1=$(cat /sys/class/net/$iface/statistics/rx_bytes 2>/dev/null)
tx1=$(cat /sys/class/net/$iface/statistics/tx_bytes 2>/dev/null)

sleep 1

rx2=$(cat /sys/class/net/$iface/statistics/rx_bytes 2>/dev/null)
tx2=$(cat /sys/class/net/$iface/statistics/tx_bytes 2>/dev/null)

down=$(( (rx2 - rx1) * 8 / 1000 ))
up=$(( (tx2 - tx1) * 8 / 1000 ))

# prevent negative values
(( down < 0 )) && down=0
(( up < 0 )) && up=0

# BAR OUTPUT (ONLY ICON)
text="$icon"

# TOOLTIP INFO
tooltip="SSID: $ssid\nSignal: ${signal}%\n↓ ${down} Kbps ↑ ${up} Kbps"

echo "{\"text\":\"$text\",\"tooltip\":\"$tooltip\"}"