#!/bin/sh

pidof ironbar && killall ironbar || ironbar > /dev/null 2>&1 &
