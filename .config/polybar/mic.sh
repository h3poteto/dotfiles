#!/bin/sh

volume=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk -F '[:] ' '{print $2}')
percent=$(awk "BEGIN { print $volume*100 }")
echo "${percent}%"
