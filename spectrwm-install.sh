#!/bin/bash
#  ____             _                         ____          _
# |  _ \  __ _ _ __| | ___ __   ___  ___ ___ / ___|___   __| | ___
# | | | |/ _` | '__| |/ / '_ \ / _ \/ __/ __| |   / _ \ / _` |/ _ \
# | |_| | (_| | |  |   <| | | |  __/\__ \__ \ |__| (_) | (_| |  __/
# |____/ \__,_|_|  |_|\_\_| |_|\___||___/___/\____\___/ \__,_|\___|
# -----------------------------------------------------------------
# https://darkncesscode.com
# https://github.com/codedarkness
# -----------------------------------------------------------------
#
#        FILE: spectrwm-install.sh
#       USAGE: ./spectrwm-install.sh
#
# DESCRIPTION: install spectrwm and copy custom config files
#	       this is a minimal configuration of spectrwm
#	       check the orginal_spectrwm.conf with all the
#	       option that file has
#
#      AUTHOR: DarknessCode
#       EMAIL: admin@darknesscode.com
#
#     CREATED: 04-15-2020
#
# -----------------------------------------------------------------

arch-based() {
	config-files/systems/arch-based.sh
}

debian-based() {
	config-files/systems/debian-based.sh
}

config-files() {
	cp -ar config-files/scpectrwm.conf $HOME/.spectrwm.conf &&
	echo " ##### spectrwm.conf has been copied";
	cp -ar config-files/conckyrc $HOME/.conkyrc &&
	echo " #### conkyrc has been copied"
}

keybindings() {
	less config-files/keybindings
}

themes() {
	config-files/themes/themes.sh
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
	echo "                      _                            "
	echo "                     | |                           "
	echo "  ___ _ __   ___  ___| |_ _ ____      ___ __ ___   "
	echo " / __| '_ \ / _ \/ __| __| '__\ \ /\ / / '_ ' _ \  "
	echo " \__ \ |_) |  __/ (__| |_| |   \ V  V /| | | | | | "
	echo " |___/ .__/ \___|\___|\__|_|    \_/\_/ |_| |_| |_| "
	echo "     | |                                           "
	echo "     |_|                                           "
	echo " --------------------------------------------------"
	echo " ###       tiling window manager for X11        ###"
	echo " --------------------------------------------------"
	echo ""
	echo " 1 - Arch Based"
	echo " 2 - Debian Based"
	echo " 3 - Copy (custom) config files"
	echo " 4 - Keybindings"
	echo " 5 - themes (change colors)"
	echo " 0 - Exit"
	echo ""
	echo -n " Enter selection [1 - 0] : "
	read selection
	echo ""

	case $selection in
		1) clear; arch-based   ;;
		2) clear; debian-based ;;
		3) clear; config-files  ; press_enter ;;
		4) clear; keybindings  ;;
		5) clear; themes       ;;
		0) clear; exit ;;
		*) clear; incorrect_selection ; press_enter ;;
	esac
done
