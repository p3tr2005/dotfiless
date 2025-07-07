#!/bin/bash

current=$(ddcutil getvcp 10 | awk -F'current value = |,' '/current value/ {print $2}')
new=$((current - 10))
[ $new -lt 0 ] && new=0
ddcutil setvcp 10 "$new"
