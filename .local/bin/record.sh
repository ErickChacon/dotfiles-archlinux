#!/bin/sh

ffmpeg -f pulse -i default -f x11grab -s 1920x1080 -i :0.0 /home/chaconmo/cloud/uni/${1}.mp4

# ffmpeg -f pulse -i default -f x11grab -s 3440x1440 -i :0.0+1920,0 /home/chaconmo/cloud/uni/${1}.mp4
# ffmpeg -f pulse -i default -f x11grab -s 1720x1440 -i :0.0+1920,0 /home/chaconmo/cloud/uni/${1}.mp4

