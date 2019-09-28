#!/usr/bin/python

# Usage: upower.py <device> <icon>

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
