#!/bin/sh

if [ -z "$(xrandr --listactivemonitors | grep 'HDMI-0~1')" ]; then
    xrandr --setmonitor HDMI-0~1 1205/279x1440/333+0+0 HDMI-0
    xrandr --setmonitor HDMI-0~2 2235/518x1440/333+1205+0 none
else
    xrandr --delmonitor HDMI-0~1
    xrandr --delmonitor HDMI-0~2
fi

xrandr --listactivemonitors

