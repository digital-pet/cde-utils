#!/bin/sh

pulseaudio --start
picom &
dunst &
stalonetray &
pnmixer &
nm-applet &
udiskie -t &
