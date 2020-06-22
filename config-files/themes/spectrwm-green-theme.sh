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
#        FILE: spectrwm-green-theme.sh
#       USAGE: ./spectrwm-green-theme.sh
#
# DESCRIPTION: change color scheme in spectrwm.conf file
#	       this script just change the colors
#
#      AUTHOR: DarknessCode
#       EMAIL: admin@darknesscode.com
#
#     CREATED: 04-22-2020 04:10
#
# -----------------------------------------------------------------

## setting up env
clear

echo "Changing color scheme for spectrwm - Green"

echo "-------------------------------------------------------------"

## Color Focus
sed -i 's+color_focus\		=\ rgb:.*+color_focus\		=\ rgb:55/60/64+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Color focus was change"

## Color Focus Maximized
sed -i 's+color_focus_maximized\   =\ rgb:.*+color_focus_maximized\   =\ rgb:22/2D/31+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Color focus maximized was change"

## Color Unfocus
sed -i 's+color_unfocus\		=\ rgb:.*+color_unfocus\		=\ rgb:2F/3D/44+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Color unfocus was change"

## Color Unfocus Maximized
sed -i 's+color_unfocus_maximized\	=\ rgb:.*+color_unfocus_maximized\	=\ rgb:2F/3D/44+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Color unfocus maximized was change"

## Bar Border Color
sed -i 's+bar_border\[1\]\	    	=\ rgb:.*+bar_border\[1\]\	    	=\ rgb:22/2D/31+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Bar border color was change"

## Bar Border Unfocus Color
sed -i 's+bar_border_unfocus\[1\]\	=\ rgb:.*+bar_border_unfocus\[1\]\	=\ rgb:22/2D/31+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Bar barder color was change"

## Bar Background Color
sed -i 's+bar_color\[1\]\	    	=\ rgb:.*+bar_color\[1\]\	    	=\ rgb:22/2D/31+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Bar background color was change"

## Bar Color Selected
sed -i 's+bar_color_selected\[1\]\	=\ rgb:.*+bar_color_selected\[1\]\	=\ rgb:38/3C/4A+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Bar selected was change"

## dmenu system account
sed -i 's/nb="-nb #.*"/nb="-nb #222D31"/g' ~/Documents/scripts/sysact.sh &&
sed -i 's/sb="-sb #.*"/sb="-sb #222D31"/g' ~/Documents/scripts/sysact.sh &&
sed -i 's/nf="-nf #.*"/nf="-nf #4D5656"/g' ~/Documents/scripts/sysact.sh &&
	echo " dmenu colors has canged"

echo "------------------------------------------------------------"

echo "### -------------------------> DONE! Re-start Spectrdwm"

echo "------------------------------------------------------------"

exit 0
