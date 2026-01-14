#!/bin/sh

pidof eww || eww daemon

eww open --toggle bottom-bar-0
