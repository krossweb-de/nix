#!/usr/bin/env bash

# update
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y

# Regolith mods
sudo apt-get install -y i3xrocks-temp i3xrocks-memory i3xrocks-disk-capacity i3xrocks-battery
sudo apt-get install -y regolith-look-nord regolith-look-ayu
regolith-look set ayu
regolith-look refresh

# VNC
sudo apt-get install -y tigervnc-standalone-server
echo "Please enter VNC-Server Password: "

echo '
#!/bin/sh
#exec /etc/vnc/xstartup
xrdb $HOME/.Xresources-regolith
vncconfig -iconic &
dbus-launch --exit-with-session gnome-session &
#dbus-launch --exit-with-session regolith-session &
#nautilus &
gnome-terminal &
' > ~/.vnc/xstartup

vncpasswd
vncserver -localhost no
vncserver -list
vncserver -kill :1

# PHP
sudo apt-get install php-cli php-xml php-sqlite3 php-intl php-mbstring

# Snaps
# PHPStorm, Remmina VNC client, Chromium, 
