#!/bin/bash

case "$1" in
    i)
        xrandr --output VIRTUAL1 --off --output DP3 --off --output DP1 --off --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP2 --off
        exit
        ;;
    e)
        xrandr --output VIRTUAL1 --off --output DP3 --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output eDP1 --off --output DP2 --off
        exit
        ;;
    x)
        xrandr --output VIRTUAL1 --off --output DP3 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP1 --off --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP2 --off
        exit
        ;;
esac
