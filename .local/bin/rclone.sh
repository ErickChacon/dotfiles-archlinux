#!/bin/sh

rclone sync \
    ~/documents lancaster:documents --exclude .git/ --progress --retries 1

