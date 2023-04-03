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

# rclone sync \
#     uni:documents/projects/change-of-support \
#     ~/documents/projects/change-of-support \
#     --exclude .git/ --progress --retries 10

rclone sync \
    uni:documents/repositories/dotfiles-archlinux \
    ~/documents/repositories/dotfiles-archlinux \
    --exclude .git/ --progress --retries 10

rclone sync \
    uni:documents/repositories/toolbox \
    ~/documents/repositories/toolbox \
    --exclude .git/ --progress --retries 10

rclone sync \
    uni:documents/texmf \
    ~/documents/texmf \
    --exclude .git/ --progress --retries 10

# rclone sync \
#     ~/documents uni:documents \
#     --exclude /organizer/personal/personal-information.md \
#     --exclude .git/ --progress --retries 10

# rclone sync \
#     ~/documents lancaster:documents --exclude .git/ --progress --retries 1

# rclone sync \
#     ~/documents/organizer lancaster:documents/organizer \
#     --exclude personal/no.md  --progress --retries 1

# rclone sync \
#     lancaster:documents/teaching/uni-postgraduate/02-bayesian-statistics \
#     ~/documents/teaching/uni-postgraduate/02-bayesian-statistics \
#     --exclude .git/ --progress --retries 5

