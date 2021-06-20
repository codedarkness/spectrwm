#!/bin/bash
#  ____             _                         ____          _
# |  _ \  __ _ _ __| | ___ __   ___  ___ ___ / ___|___   __| | ___
# | | | |/ _' | '__| |/ / '_ \ / _ \/ __/ __| |   / _ \ / _' |/ _ \
# | |_| | (_| | |  |   <| | | |  __/\__ \__ \ |__| (_) | (_| |  __/
# |____/ \__,_|_|  |_|\_\_| |_|\___||___/___/\____\___/ \__,_|\___|
# -----------------------------------------------------------------
# https://darkncesscode.xyz
# https://github.com/codedarkness
# -----------------------------------------------------------------
#
#        FILE: themes.sh
#       USAGE: ./themes.sh - sub menu (script) of
#              spectrwm_install.sh
#
# DESCRIPTION: change the color of spectrwm and colors
#	       for Xresources to match terminal colors
#
#      AUTHOR: DarknessCode
#       EMAIL: achim@darknesscode.xyz
#
#     CREATED: 04-15-2020
#
# -----------------------------------------------------------------

dark-theme() {
	config-files/themes/spectrwm-dark-theme.sh
}

dracula-theme() {
	config-files/themes/spectrwm-dracula-theme.sh
}

green-theme() {
	config-files/themes/spectrwm-green-theme.sh
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
	echo "   _____      _            _____      _                               "
	echo "  / ____|    | |          / ____|    | |                              "
	echo " | |     ___ | | ___  _ _| (___   ___| |__   ___ _ __ ___   ___  ___  "
	echo " | |    / _ \| |/ _ \| '__\___ \ / __| '_ \ / _ \ '_ ' _ \ / _ \/ __| "
	echo " | |___| (_) | | (_) | |  ____) | (__| | | |  __/ | | | | |  __/\__ \ "
	echo "  \_____\___/|_|\___/|_| |_____/ \___|_| |_|\___|_| |_| |_|\___||___/ "
	echo ""
	echo " Color Schemes for spectrwm"
	echo ""
	echo " 1 - Dark Color"
	echo " 2 - Dracula Color"
	echo " 3 - Green Color"
	echo ""
	echo " 0 - Back"
	echo ""
	echo -n " Enter selection [1 - 0] : "
	read selection
	echo ""

	case $selection in
		1) clear; dark-theme      ; press_enter ;;
		2) clear; dracula-theme   ; press_enter ;;
		3) clear; green-theme     ; press_enter ;;
		0) clear; exit ;;
		*) clear; incorrect_selection ; press_enter ;;
	esac
done
