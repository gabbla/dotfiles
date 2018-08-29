#!/bin/bash

lock() {
	index=$(( $RANDOM % 3 + 1 ))
	i3lock -efdI 15 -i ~/wallpapers/wallpaper$index.png
}

case "$1" in
	lock)
		lock
		;;
	logout)
		i3-msg exit
		;;
	suspend)
		;;
	hibernate)
		;;
	reboot)
		reboot
		;;
	shutdown)
		shutdown now
		;;
esac
