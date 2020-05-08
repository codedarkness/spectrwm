#!/bin/bash
# baraction.sh for spectrwm status bar




## CPU
cpu(){
	read cpu a b c previdle rest < /proc/stat
	prevtotal=$((a+b+c+previdle))
	sleep 0.5
	read cpu a b c idle rest < /proc/stat
	total=$((a+b+c+idle))
	cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
	echo -e "CPU $cpu%"
}

## TEMP
tem(){
#	tem=cat /sys/class/thermal/thermal_zone0/temp
#  	tem='expr $tem / 1000'
  	echo -e "TEM pice of shit"
}

## MEM
mem(){
	mem=`free | awk '/Mem/ {printf "%d MiB\n", $3 / 1024.0, $2 / 1024.0 }'`
	echo -e "MEM $mem"
}

## DISK
hdd(){
	hdd="$(df -h | awk 'NR==4{print $4}')"
	echo -e "HDD $hdd"
}

## VOLUME
vol(){
	vol=`amixer get Master | awk -F'[][]' 'END{ print $2 }'`
	echo -e "VOL $vol"
}

## BATTERY

## DATE
date(){
	date="$(date +"%A, %B %d %l:%M %p")"
	echo -e "$date"
}

SLEEP_SEC=2
#loops forever outputting a line every SLEEP_SEC secs
while :; do
	echo "+@fg=1; $(cpu) +@fg=0;  :  +@fg=2; $(tem) +@fg=0;  :  +@fg=3; $(mem) +@fg=0;  :  +@fg=4; $(hdd) +@fg=0;  :  +@fg=5; $(vol) +fg=0;  :  +@fg=6; $(date)"
	sleep $SLEEP_SEC
done
