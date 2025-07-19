#!/bin/bash

BOARD_NAME="ROG STRIX B760-G GAMING WIFI"

if [ "$(cat /sys/class/dmi/id/board_name)" = "$BOARD_NAME" ]; then
  openrgb --profile "starnight"
fi
