#!/bin/sh

pidof ironbar && killall ironbar && exit

ironbar > /dev/null 2>&1 &
