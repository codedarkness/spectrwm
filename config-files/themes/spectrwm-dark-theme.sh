#!/bin/bash
#  ____             _                         ____          _
# |  _ \  __ _ _ __| | ___ __   ___  ___ ___ / ___|___   __| | ___
# | | | |/ _` | '__| |/ / '_ \ / _ \/ __/ __| |   / _ \ / _` |/ _ \
# | |_| | (_| | |  |   <| | | |  __/\__ \__ \ |__| (_) | (_| |  __/
# |____/ \__,_|_|  |_|\_\_| |_|\___||___/___/\____\___/ \__,_|\___|
# -----------------------------------------------------------------
# https://darkncesscode.xyz
# https://github.com/codedarkness
# -----------------------------------------------------------------
#
#        FILE: spectrwm-dark-theme.sh
#       USAGE: ./spectrwm-dark-theme.sh
#
# DESCRIPTION: change color scheme in spectrwm.conf file
#	       this script just change the colors
#
#      AUTHOR: DarknessCode
#       EMAIL: achim@darknesscode.xyz
#
#     CREATED: 05-25-2020 12:21
#
# -----------------------------------------------------------------

## setting up env
clear

echo " Changing color scheme for spectrwm - Dark"
echo ""

## Color Focus
sed -i 's+color_focus\		=\ rgb:.*+color_focus\		=\ rgb:55/60/64+g' $HOME/.spectrwm.conf &&
echo " Color focus was change" || echo " Your brake something in the matrix"
echo ""

## Color Focus Maximized
sed -i 's+color_focus_maximized\   =\ rgb:.*+color_focus_maximized\   =\ rgb:14/16/1B+g' $HOME/.spectrwm.conf &&
echo " Color focus maximized was change" || echo " Something is broken"
echo ""

## Color Unfocus
sed -i 's+color_unfocus\		=\ rgb:.*+color_unfocus\		=\ rgb:22/25/2C+g' $HOME/.spectrwm.conf &&
echo " Color unfocus was change" || echo " Upsss!!!"
echo ""

## Color Unfocus Maximized
sed -i 's+color_unfocus_maximized\	=\ rgb:.*+color_unfocus_maximized\	=\ rgb:14/16/1B+g' $HOME/.spectrwm.conf &&
echo " Color unfocus maximized was change" || echo " We don't know nothign"
echo ""

## Bar Border Color
sed -i 's+bar_border\[1\]\	    	=\ rgb:.*+bar_border\[1\]\	    	=\ rgb:14/16/1B+g' $HOME/.spectrwm.conf &&
echo " Bar border color was change" || echo " Upsss!!!"
echo ""

## Bar Border Unfocus Color
sed -i 's+bar_border_unfocus\[1\]\	=\ rgb:.*+bar_border_unfocus\[1\]\	=\ rgb:14/16/1B+g' $HOME/.spectrwm.conf &&
echo " Bar barder color was change" || echo " Do we have a problem"
echo ""

## Bar Background Color
sed -i 's+bar_color\[1\]\	    	=\ rgb:.*+bar_color\[1\]\	    	=\ rgb:14/16/1B+g' $HOME/.spectrwm.conf &&
echo " Bar background color was change" || echo " Something whent wrong!"
echo ""

## Bar Color Selected
sed -i 's+bar_color_selected\[1\]\	=\ rgb:.*+bar_color_selected\[1\]\	=\ rgb:38/3C/4A+g' $HOME/.spectrwm.conf &&
echo " Bar selected was change" || echo "Upssss!!"
echo ""

## dmenu system account
sed -i 's/nb="-nb #.*"/nb="-nb #14161B"/g' $HOME/.config/spectrwm/sysact.sh &&
sed -i 's/sb="-sb #.*"/sb="-sb #14161B"/g' $HOME/.config/spectrwm/sysact.sh &&
sed -i 's/nf="-nf #.*"/nf="-nf #383A59"/g' $HOME/.config/spectrwm/sysact.sh &&
echo " dmenu colors has canged"
echo ""

## dmenu custom
sed -i 's/nb="-nb #.*"/nb="-nb #14161B"/g' $HOME/.config/spectrwm/dmenu-programs.sh &&
sed -i 's/sb="-sb #.*"/sb="-sb #14161B"/g' $HOME/.config/spectrwm/dmenu-programs.sh &&
sed -i 's/nf="-nf #.*"/nf="-nf #383A59"/g' $HOME/.config/spectrwm/dmenu-programs.sh &&
echo " dmenu programs colors has canged" || echo " Upssss!!!!"
echo ""

while true; do
	read -p " Do you want to copy Xresources [y - n] : " yn
	case $yn in
		[Yy]* )
			cp -af config-files/themes/xresources/Xresources-dark $HOME/.Xresources &&
			echo " Xresources has been copy" || echo " Upsss! we have a problem here" ; break ;;
		[Nn]* )
			break ;;
		* ) echo "Please answer yes or no." ;;
	esac
done

echo ""
echo " Restart spectrwm (Mod+Shift+r)"
echo " If did you copy xresources do you need to exit and login back."
