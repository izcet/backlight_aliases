#!/bin/bash

R=3
G=1
B=0

RU=0
GU=0
BU=0

CAP=10

RP="3"
GP="1"
BP="2"

DELAY=.2
OUTPUT=eDP

while [ true ] ; do
sleep $DELAY

xrandr --output $OUTPUT --gamma .$R:.$G:.$B

if [[ $R -ge $CAP ]] ; then
RU=0
fi
if [[ $R -le 0 ]] ; then
RU=1
fi

if [[ $G -ge $CAP ]] ; then
GU=0
fi
if [[ $G -le 0 ]] ; then
GU=1
fi

if [[ $B -ge $CAP ]] ; then
BU=0
fi
if [[ $B -le 0 ]] ; then
BU=1
fi

if [[ $RU -eq 0 ]] ; then
	R="$(echo "$R - $RP" | bc )"
else
	R=$(echo "$R + $RP" | bc )
fi

if [[ $GU -eq 0 ]] ; then
	G=$(echo "$G - $GP" | bc )
else
	G=$(echo "$G + $GP" | bc )
fi

if [[ $BU -eq 0 ]] ; then
	B=$(echo "$B - $BP" | bc )
else
	B=$(echo "$B + $BP" | bc )
fi

done
