#!/bin/sh

if [ ! -z `pidof ironbar` ]; then
    killall ironbar && exit
fi

ironbar &

disown
