#!/bin/bash
#  ____             _                         ____          _
# |  _ \  __ _ _ __| | ___ __   ___  ___ ___ / ___|___   __| | ___
# | | | |/ _' | '__| |/ / '_ \ / _ \/ __/ __| |   / _ \ / _' |/ _ \
# | |_| | (_| | |  |   <| | | |  __/\__ \__ \ |__| (_) | (_| |  __/
# |____/ \__,_|_|  |_|\_\_| |_|\___||___/___/\____\___/ \__,_|\___|
# -----------------------------------------------------------------
# https://darkncesscode.com
# https://github.com/codedarkness
# -----------------------------------------------------------------
#
#        FILE: install-spectrwm.sh
#       USAGE: ./install-spectrwm.sh | sub menu of spectrwm-install.sh
#
# DESCRIPTION: install spectrwm in arch and debian based systems
#
#      AUTHOR: DarknessCode
#       EMAIL: admin@darknesscode.com
#
#     CREATED: 07-27-20 10:32
#
# -----------------------------------------------------------------

install-spectrwm() {
	echo ""
	echo " Installing spectrwm in Arch, Debian Based systems"
	echo ""
	sleep 2

	if ! location="$(type -p "spectrwm")" || [ -z "spectrwm" ]; then

		# check if pacman is installed
		if which pacman > /dev/null; then

			sudo pacman -S --noconfirm spectrwm

		fi

		# check if apt is installed
		if which apt > /dev/null; then

			sudo apt install -y spectrwm

		fi

	else
		echo " nothing to do!"
	fi

	echo ""
}

install-conky() {
	echo ""
	echo " Installing conky in Arch, Debian Based systems"
	echo ""
	sleep 2

	if ! location="$(type -p "conky")" || [ -z "conky" ]; then

		# check if pacman is installed
		if which pacman > /dev/null; then

			sudo pacman -S --noconfirm conky

		fi

		# check if apt is installed
		if which apt > /dev/null; then

			sudo apt install -y conky

		fi

	else
		echo " nothing to do!"
	fi

	echo ""
}

press_enter() {
	echo ""
	echo -n " Press Enter To Continue"
	read
	clear
}

incorrect_selection() {
	echo " Incorrect selection! try again"
}

until [ "$selection" = "0" ]; do
	clear
	echo ""
	echo " DarknessCode"
	echo "  _____           _        _ _  _____                 _                            "
	echo " |_   _|         | |      | | |/ ____|               | |                           "
	echo "   | |  _ __  ___| |_ __ _| | | (___  _ __   ___  ___| |_ _ ____      ___ __ ___   "
	echo "   | | | '_ \/ __| __/ _' | | |\___ \| '_ \ / _ \/ __| __| '__\ \ /\ / / '_ ' _ \  "
	echo "  _| |_| | | \__ \ || (_| | | |____) | |_) |  __/ (__| |_| |   \ V  V /| | | | | | "
	echo " |_____|_| |_|___/\__\__,_|_|_|_____/| .__/ \___|\___|\__|_|    \_/\_/ |_| |_| |_| "
	echo "                                     | |                                           "
	echo "                                     |_| 						 "
	echo ""
	echo " Install spectrwm in arch and debian based systems"
	echo ""
	echo " 1 - Spectrwm"
	echo " 2 - Conky (for status bar)"
	echo ""
	echo " 0 - Back"
	echo ""
	echo -n " Enter selection [1 - 0] : "
	read selection
	echo ""

	case $selection in
		1) clear; install-spectrwm   ; press_enter ;;
		2) clear; install-conky      ; press_enter ;;
		0) clear; exit ;;
		*) clear; incorrect_selection ; press_enter ;;
	esac
done
