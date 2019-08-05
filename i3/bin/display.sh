#!/bin/bash

INTERNAL="eDP1"
EXTERNAL="DP3"

case "$1" in
    i) # internal
        xrandr --output $EXTERNAL --off --output DP1 --off --output $INTERNAL --mode 1920x1080 --pos 0x0 --rotate normal --output DP2 --off
        exit
        ;;
    e) # external
        xrandr --output $EXTERNAL --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output $INTERNAL --off --output DP2 --off
        exit
        ;;
    x) #extend
        xrandr --output $EXTERNAL --mode auto
        xrandr --output $EXTERNAL --mode 1920x1080 --pos 1920x0 --rotate normal --output DP1 --off --output $INTERNAL --mode 1920x1080 --pos 0x0 --rotate normal --output DP2 --off
        exit
        ;;
esac

# TODO restart polybar
