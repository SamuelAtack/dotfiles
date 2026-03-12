#!/bin/bash

if [ "$1" = "toggle" ]; then
    status=$(bluetoothctl show | grep "Powered" | awk '{print $2}')
    if [ "$status" = "yes" ]; then
        bluetoothctl power off
    else
        bluetoothctl power on
    fi
    exit 0
fi

status=$(bluetoothctl show | grep "Powered" | awk '{print $2}')
connected=$(bluetoothctl info 2>/dev/null | grep "Name" | awk -F': ' '{print $2}')

if [ "$status" = "yes" ]; then
    if [ -n "$connected" ]; then
        echo "BT $connected"
    else
        echo "BT on"
    fi
else
    echo "BT off"
fi
