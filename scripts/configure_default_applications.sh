#!/bin/sh

set_default_application() { xdg-mime default "$1" "$2" }

# Audio
set_default_application org.gnome.Decibels.desktop audio/mpeg

# Applications
set_default_application libreoffice-writer.desktop application/msword
set_default_application org.gnome.Papers.desktop application/pdf

# Text
set_default_application neovide.desktop text/plain
set_default_application neovide.desktop text/markdown

# Video
set_default_application xdg-mime default showtime.desktop video/mp4
