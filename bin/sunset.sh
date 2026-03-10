#!/bin/bash
# Toggles hyprsunset
#

if [[ $(pgrep hyprsunset) ]]; then
    pkill -9 hyprsunset
elif [[ !$(pgrep hyprsunset) ]]; then
    hyprsunset --temperature 3800 > /dev/null &
fi
