#!/usr/bin/sh

brightnessctl | awk '/Current/ {print "{\"text\": \"☀️" $4 "\"}"}' | sed 's/[\(\)]//g'
