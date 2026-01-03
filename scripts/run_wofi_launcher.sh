#!/bin/sh

pidof wofi && killall wofi && exit

wofi --style $XDG_CONFIG_HOME/wofi/style.css
