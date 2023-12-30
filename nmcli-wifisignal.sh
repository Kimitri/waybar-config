#!/usr/bin/env bash

OUTPUT=$(nmcli dev wifi list | awk '/\*/{if (NR!=1) {print substr($3, 0, 8) " " $9}}')

echo "{\"text\": \"$OUTPUT\"}"
