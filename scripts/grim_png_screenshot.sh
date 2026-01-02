#!/bin/sh

DATETIME=`date +'%Y-%m-%d_%H:%M:%S'`

FILENAME="$XDG_PICTURES_DIR/Screenshots/screenshot_$DATETIME.png"

notify() {
    command -v notify-send > /dev/null 2>&1 && notify-send \
        "Screenshot captured" \
        "Your screenshot has been saved successfully."
}

screenshot() {
    pidof grim || grim -c -t png -l 0 "$FILENAME"
}

screenshot && notify
