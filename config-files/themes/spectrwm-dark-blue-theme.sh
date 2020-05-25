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
#        FILE: spectrwm-dark-blue-theme.sh
#       USAGE: ./spectrwm-dark-blue-theme.sh
#
# DESCRIPTION: change color scheme in spectrwm.conf file
#	       this script just change the colors
#
#      AUTHOR: DarknessCode
#       EMAIL: admin@darknesscode.com
#
#     CREATED: 05-25-2020 01:34
#
# -----------------------------------------------------------------

## setting up env
clear

echo "Changing color scheme for spectrwm - Dark Blue"

echo "-------------------------------------------------------------"

## Color Focus
sed -i 's+color_focus\		=\ rgb:.*+color_focus\		=\ rgb:85/92/9E+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Color focus was change"

## Color Focus Maximized
sed -i 's+color_focus_maximized\   =\ rgb:.*+color_focus_maximized\   =\ rgb:0F/11/1A+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Color focus maximized was change"

## Color Unfocus
sed -i 's+color_unfocus\		=\ rgb:.*+color_unfocus\		=\ rgb:38/3C/4A+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Color unfocus was change"

## Color Unfocus Maximized
sed -i 's+color_unfocus_maximized\	=\ rgb:.*+color_unfocus_maximized\	=\ rgb:0F/11/1A+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Color unfocus maximized was change"

## Bar Border Color
sed -i 's+bar_border\[1\]\	    	=\ rgb:.*+bar_border\[1\]\	    	=\ rgb:0F/11/1A+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Bar border color was change"

## Bar Border Unfocus Color
sed -i 's+bar_border_unfocus\[1\]\	=\ rgb:.*+bar_border_unfocus\[1\]\	=\ rgb:0F/11/1A+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Bar barder color was change"

## Bar Background Color
sed -i 's+bar_color\[1\]\	    	=\ rgb:.*+bar_color\[1\]\	    	=\ rgb:0F/11/1A+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Bar background color was change"

## Bar Color Selected
sed -i 's+bar_color_selected\[1\]\	=\ rgb:.*+bar_color_selected\[1\]\	=\ rgb:1F/61/8D+g' $HOME/.spectrwm.conf &&
	echo "### -------------------------> Bar selected was change"

echo "------------------------------------------------------------"

echo "### -------------------------> DONE! Re-start Spectrdwm"

echo "------------------------------------------------------------"

exit 0
