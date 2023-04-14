#!/bin/sh

rclone sync \
    uni:documents ~/documents \
    --exclude /organizer/personal/personal-information.md \
    --exclude .git/ --progress --retries 10
