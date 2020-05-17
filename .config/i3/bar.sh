#!/bin/sh
# status bar for i3wm

while :
do
	echo $(cat /sys/class/power_supply/BAT1/status)"," $(cat /sys/class/power_supply/BAT1/capacity)"% |" $(date -I) "("$(date +%a)")" $(date +%T)
	sleep 1
done

