#!/bin/sh

if [ -z "$(xrandr --listactivemonitors | grep 'HDMI-0~1')" ]; then
    xrandr --setmonitor HDMI-0~1 760/176x1440/333+0+0 HDMI-0
    xrandr --setmonitor HDMI-0~2 1920/445x1440/333+760+0 none
    xrandr --setmonitor HDMI-0~3 760/176x1440/333+2680+0 none
else
    xrandr --delmonitor HDMI-0~1
    xrandr --delmonitor HDMI-0~2
    xrandr --delmonitor HDMI-0~3
fi

xrandr --listactivemonitors
