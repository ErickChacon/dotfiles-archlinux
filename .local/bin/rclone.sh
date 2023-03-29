#!/bin/sh

rclone sync \
    ~/documents uni:documents \
    --exclude /organizer/personal/personal-information.md \
    --exclude .git/ --progress --retries 10

# rclone sync \
#     ~/documents lancaster:documents --exclude .git/ --progress --retries 1

# rclone sync \
#     ~/documents/organizer lancaster:documents/organizer \
#     --exclude personal/no.md  --progress --retries 1

# rclone sync \
#     lancaster:documents/teaching/uni-postgraduate/02-bayesian-statistics \
#     ~/documents/teaching/uni-postgraduate/02-bayesian-statistics \
#     --exclude .git/ --progress --retries 5

