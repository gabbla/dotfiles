#!/usr/bin/python

# Usage: upower.py <device> <label>

import dbus
try:
    bus = dbus.SystemBus()
    device = bus.get_object("org.freedesktop.UPower", "/org/freedesktop/UPower/devices/battery_BAT0")
    device_ifc = dbus.Interface(device, dbus_interface='org.freedesktop.DBus.Properties')

    bat_level = device_ifc.Get('org.freedesktop.UPower.Device', 'Percentage')
except Exception:
    exit
