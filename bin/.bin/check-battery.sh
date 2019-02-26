#!/bin/bash

BATTLEVEL=`acpi -b | cut -f 4 -d " " | tr -d '[%,]'`

if [[ "$BATTLEVEL" -lt 5 ]]; then
    notify-send -u critical "Power" "Battery Critically Low: $BATTLEVEL%"
elif [[ "$BATTLEVEL" -lt 15 ]]; then
    notify-send -u normal "Power" "Battery Low: $BATTLEVEL%"
fi
