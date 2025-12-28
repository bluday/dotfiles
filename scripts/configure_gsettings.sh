#!/bin/sh

set_background_option() {
    gsettings set org.gnome.desktop.background "$1" "$2"
}

set_interface_option() {
    gsettings set org.gnome.desktop.interface "$1" "$2"
}

set_background_option primary-color   "#0038eb"
set_background_option secondary-color "#0050ff"

set_interface_option clock-format            "24h"
set_interface_option color-scheme            "prefer-dark"
set_interface_option cursor-size             "$CURSOR_SIZE"
set_interface_option cursor-theme            "$CURSOR_THEME"
set_interface_option document-font-name      "Serif 10"
set_interface_option font-hinting            "full"
set_interface_option font-name               "Sans 10"
set_interface_option gtk-color-scheme        "dark"
set_interface_option gtk-theme               "Adwaita"
set_interface_option icon-theme              "Adwaita"
set_interface_option monospace-font-name     "Monospace 9"
set_interface_option show-battery-percentage true
set_interface_option text-scaling-factor     1.0
