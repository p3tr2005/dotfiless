#!/bin/bash

ACTION=$1
STEP=10

# Hardcoded external HDMI i2c device
EXTERNAL_I2C="/dev/i2c-3"

# External monitor via ddcutil
if [[ -e "$EXTERNAL_I2C" ]]; then
  current=$(ddcutil --bus=3 getvcp 10 | awk -F'current value = |,' '/current value/ {print $2}')
  if [[ "$ACTION" == "up" ]]; then
    new=$((current + STEP))
    [ $new -gt 100 ] && new=100
  else
    new=$((current - STEP))
    [ $new -lt 0 ] && new=0
  fi
  ddcutil --bus=3 setvcp 10 "$new"
fi

# Internal screen via brightnessctl (intel_backlight)
if [[ -e /sys/class/backlight/intel_backlight/brightness ]]; then
  if [[ "$ACTION" == "up" ]]; then
    brightnessctl -d intel_backlight set ${STEP}%+
  else
    brightnessctl -d intel_backlight set ${STEP}%-
  fi
fi
