#!/usr/bin/sh

pactl get-sink-volume @DEFAULT_SINK@ | awk '/Volume:/ {print "{\"text\": \"🔈" $5 "\"}"}' | sed 's/%//g'
