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
# DESCRIPTION: install spectrwm in linux systems
#
#      AUTHOR: DarknessCode
#       EMAIL: admin@darknesscode.com
#
#     CREATED: 07-27-20 10:32
#
# -----------------------------------------------------------------

install-spectrwm() {
	echo ""
	echo " Installing spectrwm"
	echo " Arch Linux | Debian | Void Linux"
	echo ""
	sleep 2

	while true; do
		read -p " Install Spectrwm [y - n] : " yn
		case $yn in
			[Yy]* )
				if ! location="$(type -p "spectrwm")" || [ -z "spectrwm" ]; then

					# check if pacman is installed
					if which pacman > /dev/null 2>&1; then

						sudo pacman -S --noconfirm spectrwm

					# check if apt is installed
					elif which apt > /dev/null 2>&1; then

						sudo apt install -y spectrwm

					# check if xbps is installed
					elif which xbps-install > /dev/null 2>&1; then

						sudo xbps-install -Sy spectrwm

					else
						echo " Your system is not compatible with this script..."
					fi

				else
					echo " Nothing to do! Spectrwm is installed in your System"
				fi ; break ;;
			[Nn]* )
				break ;;
			* ) echo "Please answer yes or no." ;;
		esac
	done

	echo ""
}

install-conky() {
	echo ""
	echo " Installing conky"
	echo " Arch Linux | Debian | Void Linux"
	echo ""
	sleep 2

	while true; do
		read -p "Install Conky [y - n] : " yn
		case $yn in
			[Yy]* )
				if ! location="$(type -p "conky")" || [ -z "conky" ]; then

					# check if pacman is installed
					if which pacman > /dev/null 2>&1; then

						sudo pacman -S --noconfirm conky

					# check if apt is installed
					elif which apt > /dev/null 2>&1; then

						sudo apt install -y conky

					elif which xbps-install > /dev/null 2>&1; then

						sudo xbps-install -Sy conky

					else
						echo " Your system is not compatible with this script..."
					fi

				else
					echo " Nothing to do! Conky is installed in your System"
				fi ; break ;;
			[Nn]* )
				break ;;
			* ) echo "Please answer yes or no." ;;
		esac
	done

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
	echo " Install spectrwm in Arch Linux | Debian | Void Linux"
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
