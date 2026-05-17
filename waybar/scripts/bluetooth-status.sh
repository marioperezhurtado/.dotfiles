#!/bin/bash

powered=$(bluetoothctl show | grep "Powered: yes")
connected=$(bluetoothctl devices Connected)

if [ -z "$powered" ]; then
    echo '{"text":"󰂲 ","class":"off","tooltip":"Bluetooth off"}'
elif [ -n "$connected" ]; then
    echo '{"text":"󰂱 ","class":"connected","tooltip":"Bluetooth connected"}'
else
    echo '{"text":"󰂯 ","class":"idle","tooltip":"Bluetooth idle"}'
fi
