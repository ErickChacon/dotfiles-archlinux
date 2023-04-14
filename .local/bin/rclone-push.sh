#!/bin/sh

rclone sync \
    ~/documents uni:documents \
    --exclude /organizer/personal/personal-information.md \
    --exclude .git/ --progress --retries 10
