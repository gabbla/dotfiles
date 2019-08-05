#!/bin/bash

lock() {
	#index=$(( $RANDOM % 3 + 1 ))
	#i3lock -efdI 15 -i ~/wallpapers/wallpaper$index.png
	betterlockscreen --lock
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
		systemctl reboot
		;;
	shutdown)
		systemctl poweroff	
		;;
esac
