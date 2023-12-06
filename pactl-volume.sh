#!/usr/bin/sh

ICON=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '/Mute:/ {print $2}' | sed 's/yes/🔇/g' | sed 's/no/🔊/g')
pactl get-sink-volume @DEFAULT_SINK@ | awk '/Volume:/ {print "{\"text\": \"ICON" $5 "\"}"}' | sed 's/%//g' | sed "s/ICON/$ICON/g"
