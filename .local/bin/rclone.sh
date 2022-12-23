#!/bin/sh

# rclone sync \
#     ~/documents lancaster:documents --exclude .git/ --progress --retries 1

# rclone sync \
#     ~/documents/organizer lancaster:documents/organizer \
#     --exclude personal/no.md  --progress --retries 1

# rclone sync \
#     ~/documents/organizer/personal lancaster:documents/organizer/personal \
#     --exclude personal-information.md  --progress --retries 1

rclone sync \
    ~/documents lancaster:documents \
    --exclude /organizer/personal/personal-information.md \
    --exclude .git/ --progress --retries 5

# rclone sync \
#     lancaster:documents/teaching/uni-postgraduate/02-bayesian-statistics \
#     ~/documents/teaching/uni-postgraduate/02-bayesian-statistics \
#     --exclude .git/ --progress --retries 5


# rclone sync \
#     lancaster:archive ~/archive --progress
