#!/bin/sh

cat <<EOT >> $HOME/.config/lxqt/panel.conf
[quicklaunch]
alignment=Left
apps\1\desktop=/usr/share/applications/qterminal.desktop
apps\2\desktop=/usr/share/applications/pcmanfm-qt.desktop
apps\3\desktop=/usr/share/applications/firefox.desktop
apps\size=3
type=quicklaunch
EOT

killall lxqt-panel && lxqt-panel &
rm $HOME/.config/autostart/set_once_lxqt.desktop $HOME/set_once_lxqt.sh
