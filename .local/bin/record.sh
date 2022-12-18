#!/bin/sh

# ffmpeg -f pulse -i default -f x11grab -s 1920x1080 -i :0.0 /home/chaconmo/cloud/uni/${1}.mp4

# ffmpeg -f pulse -i default -f x11grab -s 3440x1440 -i :0.0+1920,0 /home/chaconmo/cloud/uni/${1}.mp4
# ffmpeg -f pulse -i default -f x11grab -s 1720x1440 -i :0.0+1920,0 /home/chaconmo/cloud/uni/${1}.mp4


# ffmpeg -f pulse -i default -f x11grab -s 2440x1440 -i :0.0+1440,0 /home/chaconmo/cloud/uni/${1}.mp4

# # record in ultrawide screen


# arguments
position=${2:-center}

# record of ultrawide monitor
if [ $position = "right" ]; then
    ffmpeg -f pulse -i default -f x11grab -s 2235x1440 -i :0.0+1205,0 /home/chaconmo/cloud/uni/${1}.mp4
elif [ $position = "center"  ]; then
    ffmpeg -f pulse -i default -f x11grab -s 1920x1440 -i :0.0+760,0 /home/chaconmo/cloud/uni/${1}.mp4
elif [ $position = "full"  ]; then
    echo "full"
    ffmpeg -f pulse -i default -f x11grab -s 3440x1440 -i :0.0 /home/chaconmo/cloud/uni/${1}.mp4
fi
