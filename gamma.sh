#!/bin/bash
if [ "$#" -eq "3" ] ; then
	xrandr --output eDP --gamma "$1":"$2":"$3"
else
	echo "Incorrect number of arguments."
fi
