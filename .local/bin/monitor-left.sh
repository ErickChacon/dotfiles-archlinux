#!/bin/sh

# xrandr --output HDMI-A-1-0 --auto --left-of eDP
# xrandr --output HDMI-1 --auto --left-of eDP-1
# xrandr --auto --output HDMI-1 --mode 3840x2160 --left-of eDP-1
xrandr --auto --output eDP-1 --off  --output HDMI-1 --mode 3840x2160 --primary
# xrandr --auto --output HDMI-1 --off  --output eDP-1 --primary
