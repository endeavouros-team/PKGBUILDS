#!/bin/sh

dconf write /org/mate/terminal/profiles/default/use-theme-colors false

rm ~/.config/autostart/set_once_mate.desktop ~/set_once_mate.sh
