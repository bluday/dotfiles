#!/bin/sh

PERCENTAGE=`cat /sys/class/power_supply/BAT0/capacity`

printf '%s%%\n' $PERCENTAGE
