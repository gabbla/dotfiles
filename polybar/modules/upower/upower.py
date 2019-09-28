#!/usr/bin/python

# Usage: upower.py <device> <icon>
# This script is meant to be used as polybar module. It prints the 'percentage'
# property of a device to stdout. Nothing elaborated, just read the property
# through dbus on upowerd.
# The 'device' arg is taken from `upower --enumerate` last field
# Ex:
# upower --eumerate
# /org/freedesktop/UPower/devices/line_power_AC
#                                 ^^^^^^^^^^^^^ Use this as device
# The 'icon' is printed before the percentage. Can be any string
# Example in polybar/config:
# [module/mx_battery]
# type = custom/script
# exec = ~/.dotfiles/polybar/modules/upower/upower.py mouse_dev_F2_B2_22_11_37_09 

import dbus
import sys

try:
    device_name = "/org/freedesktop/UPower/devices/{}".format(sys.argv[1])
    bus = dbus.SystemBus()
    device = bus.get_object("org.freedesktop.UPower", device_name)
    device_ifc = dbus.Interface(device, dbus_interface='org.freedesktop.DBus.Properties')

    bat_level = device_ifc.Get('org.freedesktop.UPower.Device', 'Percentage')
    print("{} {}%".format(sys.argv[2], int(bat_level)))

except Exception:
    exit
