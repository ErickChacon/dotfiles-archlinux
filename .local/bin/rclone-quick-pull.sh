#!/bin/sh

rclone sync \
    personal:others/casa \
    ~/casa \
    --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M


# rclone sync \
#     personal:documents/projects/spatial-functional-clustering \
#     ~/documents/projects/spatial-functional-clustering \
#     --exclude data/processed --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

# rclone sync \
#     personal:documents/projects/food-insecurity-mapping \
#     ~/documents/projects/food-insecurity-mapping \
#     --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

# rclone sync \
#     personal:documents/projects/change-of-support \
#     ~/documents/projects/change-of-support \
#     --exclude results/ --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

# rclone sync \
#     personal:documents/projects/amazonia-yanomami \
#     ~/documents/projects/amazonia-yanomami \
#     --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

# rclone sync \
#     personal:documents/papers \
#     ~/documents/papers \
#     --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

# rclone sync \
#     personal:documents/projects/parametric-nowcasting \
#     ~/documents/projects/parametric-nowcasting \
#     --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

# rclone sync \
#     personal:documents/projects/parametric-nowcasting-check \
#     ~/documents/projects/parametric-nowcasting-check \
#     --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

# rclone sync \
#     personal:documents/applications \
#     ~/documents/applications \
#     --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M
#
# rclone sync \
#     personal:documents/teaching \
#     ~/documents/teaching \
#     --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M
#
# rclone sync \
#     personal:documents/repositories \
#     ~/documents/repositories \
#     --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M


# rclone sync \
#     uni:documents/organizer \
#     ~/documents/organizer \
#     --exclude /personal/personal-information.md \
#     --exclude .git/ --progress --retries 10
#
# rclone sync \
#     uni:documents/teaching \
#     ~/documents/teaching \
#     --exclude .git/ --progress --retries 10
#
# rclone sync \
#     uni:documents/repositories \
#     ~/documents/repositories \
#     --exclude .git/ --progress --retries 10
#
# rclone sync \
#     uni:documents/texmf \
#     ~/documents/texmf \
#     --exclude .git/ --progress --retries 10
#
# # rclone sync \
# #     ~/documents/organizer \
# #     personal:documents/organizer \
# #     --exclude /personal/personal-information.md \
# #     --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8
# #
# # rclone sync \
# #     ~/documents/teaching \
# #     personal:documents/teaching \
# #     --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8
#
# rclone sync \
#     personal:documents/projects \
#     ~/documents/projects \
#     --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M
#
# # rclone sync \
# #     ~/documents/repositories \
# #     personal:documents/repositories \
# #     --exclude .git/ --progress --retries 10
# #
# # rclone sync \
# #     ~/documents/texmf \
# #     personal:documents/texmf \
# #     --exclude .git/ --progress --retries 10
