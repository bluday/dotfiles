#!/bin/sh

pidof wofi || wofi -W 700 -H 400 -S drun -p Search -n -I -m -f -Q
