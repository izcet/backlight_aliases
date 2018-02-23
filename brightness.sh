#!/bin/sh

if [ "$1" != "" ] ; then
		if [ $(echo $1'>'0 | bc -l) ] ; then
				xrandr --display :0.0 --output eDP --brightness $1
		fi
fi
