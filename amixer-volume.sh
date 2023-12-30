#!/usr/bin/env bash

ICON=$(amixer get Master | awk '/Front Left:/ {print $6}' | sed 's/\[//g' | sed 's/\]//g' | sed 's/on/🔊/g' | sed 's/off/🔇/g')
OUTPUT=$(amixer | awk '/Front Left:/ {print "{\"text\": \"ICON" $5 "\"}"}' | sed "s/[\[\]]//g" | sed "s/ICON/$ICON/g")

head -n 1 <<< "$OUTPUT"
