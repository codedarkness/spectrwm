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
#        FILE: debian-based.sh
#       USAGE: ./debian-based.sh - sub menu (script) of
#              spectrwm_install.sh
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

spectrwm() {
	echo ""
	echo " Installing spectrwm"
	echo ""
	sleep 2;

	dpkg -l | grep spectrwm &&
	echo " spctrwm is installed in your system" ||
	sudo apt install -y spectrwm

	echo ""
}

conky() {
	echo ""
	echo " Installing conky"
	echo ""
	sleep 2;

	dpkg -l | grep  conky &&
	echo " conky is installed in your system" ||
	sudo apt install -y conky

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
	echo "  _____       _     _             ____                     _ "
	echo " |  __ \     | |   (_)           |  _ \                   | |"
	echo " | |  | | ___| |__  _  __ _ _ __ | |_) | __ _ ___  ___  __| |"
	echo " | |  | |/ _ \ '_ \| |/ _' | '_ \|  _ < / _' / __|/ _ \/ _' |"
	echo " | |__| |  __/ |_) | | (_| | | | | |_) | (_| \__ \  __/ (_| |"
	echo " |_____/ \___|_.__/|_|\__,_|_| |_|____/ \__,_|___/\___|\__,_|"
	echo ""
	echo " Spectrwm -- Tiling Window Manager for X11"
	echo ""
	echo " 1 - Install Spectrwm"
	echo " 2 - Install Conky (for status bar)"
	echo ""
	echo " 0 - Back"
	echo ""
	echo -n " Enter selection [1 - 0] : "
	read selection
	echo ""

	case $selection in
		1) clear; spectrwm     ; press_enter ;;
		2) clear; conky        ; press_enter ;;
		0) clear; exit ;;
		*) clear; incorrect_selection ; press_enter ;;
	esac
done
