#!/usr/bin/env bash

ICON=$(pamixer --get-mute | awk '{if ($1 >= "true") {print "🔇"} else {print "🔊"}}')
VALUE=$(pamixer --get-volume)
OUTPUT="$ICON $VALUE%"

head -n 1 <<< "$OUTPUT"
