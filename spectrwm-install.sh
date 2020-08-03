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

install-spectrwm() {
	config-files/systems/install-spectrwm.sh
}

change-terminal() {
	echo ""
	echo " Change terminal in spectrwm.conf custom file"
	echo ""
	echo " change to your preffer terminal here before copy"
	echo " the custom spectrwm.conf file"
	echo ""
	sleep 2

	while true; do
		read -p " Change Terminal [y - n] : " yn
		case $yn in
			[Yy]* )
				read -p " Which is your preffer terminal : " choice;
sed -i '/#startTerminal/,/#endTerminal/c\
\#startTerminal\
program['$choice'] = '$choice'\
bind['$choice'] = MOD+Return\
\#endTerminal' config-files/configs/spectrwm.conf &&
				echo " Your terminal ($choice) has been changed" || echo " Upsss!"; break ;;
			[Nn]* )
				break ;;
			* ) echo "Please answer yes or no." ;;
		esac
	done
}

config-files() {
	echo ""
	echo " Copy new config files to your system"
	echo ""
	sleep 2;

	### Check for dir, if not found create it using the mkdir ###
	dldir="$HOME/.config/spectrwm"
	[ ! -d "$dldir" ] && mkdir -p "$dldir"

	cp -ar config-files/configs/spectrwm.conf $HOME/.config/spectrwm/ &&
	echo " spectrwm.conf has been copied" || echo " Something is wrong"
	echo ""

	cp -ar config-files/configs/sysact.sh $HOME/.config/spectrwm/ &&
	echo " sysact.sh has been copied" || echo " Shhhh... There's a problem!"
	echo ""

	cp -ar config-files/configs/baractions.sh $HOME/.config/spectrwm/ &&
	echo " baraction.sh has been copied" || echo " It's not your!!"
	echo ""

	cp -ar config-files/configs/cockyrc $HOME/.conkyrc &&
	echo " conkyrc has been copied" || echo " Upsss!"
	echo ""
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
	echo ""
	echo " tiling window manager for X11"
	echo ""
	echo " 1 - Install spectrwm"
	echo " 2 - Change terminal"
	echo " 3 - Copy (custom) config files"
	echo " 4 - Keybindings"
	echo " 5 - themes (change colors)"
	echo ""
	echo " 0 - Exit"
	echo ""
	echo -n " Enter selection [1 - 0] : "
	read selection
	echo ""

	case $selection in
		1) clear; install-spectrwm ;;
		2) clear; change-terminal  ; press_enter ;;
		3) clear; config-files     ; press_enter ;;
		4) clear; keybindings  ;;
		5) clear; themes       ;;
		0) clear; exit ;;
		*) clear; incorrect_selection ; press_enter ;;
	esac
done
