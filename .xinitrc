#!/bin/sh

userresources=$HOME/.config/X11/Xresources
usermodmap=$HOME/.config/X11/Xmodmap
sysresources=/etc/X11/xinit/Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Systemctl Fix
systemctl --user set-environment DISPLAY=:0

# EN-GB Keyboard Layout
setxkbmap -layout gb

# Restart 'Wal'
#wal -R

# XRDB
xrdb -merge $HOME/.Xresources

# Exec WM 
#exec i3
exec bspwm

