#!/bin/sh

rclone sync \
    uni:documents/organizer \
    ~/documents/organizer \
    --exclude /personal/personal-information.md \
    --exclude .git/ --progress --retries 10

rclone sync \
    uni:documents/teaching \
    ~/documents/teaching \
    --exclude .git/ --progress --retries 10

rclone sync \
    uni:documents/repositories \
    ~/documents/repositories \
    --exclude .git/ --progress --retries 10

rclone sync \
    uni:documents/texmf \
    ~/documents/texmf \
    --exclude .git/ --progress --retries 10
