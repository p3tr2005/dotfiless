#!/bin/bash

if pgrep -x "wf-recorder" > /dev/null
then
    pkill wf-recorder
    notify-send "Stopped recording"
else
wf-recorder -o eDP-1 -f ~/Pictures/videos/recording-$(date +%F-%H%M%S).mp4
    notify-send "Started recording"
fi
