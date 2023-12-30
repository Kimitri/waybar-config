#!/usr/bin/env bash

brightnessctl | awk '/Current/ {print "{\"text\": \"💡" $4 "\"}"}' | sed 's/[\(\)]//g'
