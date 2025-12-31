#!/bin/sh

DATETIME=`date +'%Y-%m-%d_%H:%M:%S'`

FILENAME="$XDG_PICTURES_DIR/Screenshots/screenshot_$DATETIME.png"

pidof grim || grim -c -t png -l 0 "$FILENAME"
