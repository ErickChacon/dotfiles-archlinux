#!/bin/sh

rclone sync \
    ~/documents/organizer \
    uni:documents/organizer \
    --exclude /personal/personal-information.md \
    --exclude .git/ --progress --retries 10

rclone sync \
    ~/documents/teaching \
    uni:documents/teaching \
    --exclude .git/ --progress --retries 10

rclone sync \
    ~/documents/repositories \
    uni:documents/repositories \
    --exclude .git/ --progress --retries 10

rclone sync \
    ~/documents/texmf \
    uni:documents/texmf \
    --exclude .git/ --progress --retries 10
