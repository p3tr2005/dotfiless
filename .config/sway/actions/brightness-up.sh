#!/bin/bash

current=$(ddcutil getvcp 10 | awk -F'current value = |,' '/current value/ {print $2}')
new=$((current + 10))
[ $new -gt 100 ] && new=100
ddcutil setvcp 10 "$new"
