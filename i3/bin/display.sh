#!/bin/bash

case "$1" in
    i)
        xrandr --output DP-3 --off --output DP-1 --off --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off
        exit
        ;;
    e)
        xrandr --output DP-3 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output eDP-1 --off --output DP-2 --off
        exit
        ;;
    x)
        xrandr --output DP-3 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1 --off --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off
        exit
        ;;
esac
