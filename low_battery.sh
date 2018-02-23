#!/bin/bash

BATT_PATH="/sys/class/power_supply/BATT"
if [ "$(cat $BATT_PATH/status)" == "Discharging" ] ; then
	if [ "$(cat $BATT_PATH/capacity)" -le "15" ] ; then
		bash /home/izcet/partymode/brightness.sh .3 &>> $OUT
	fi
fi
