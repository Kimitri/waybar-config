#!/usr/bin/env bash

OUTPUT=$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | awk '/percentage/{print $2}')
echo "{\"text\": \"🔋$OUTPUT\"}"
