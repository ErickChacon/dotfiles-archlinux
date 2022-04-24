#!/bin/sh

ffmpeg -f pulse -i default -f x11grab -s 1920x1080 -i :0.0 /home/chaconmo/cloud/uni/${1}.mp4
