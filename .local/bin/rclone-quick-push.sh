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

## Applications

rclone sync \
    ~/documents/applications \
    personal:documents/applications \
    --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

## Organizer

rclone sync \
    ~/documents/organizer \
    personal:documents/organizer \
    --exclude /personal/personal-information.md \
    --exclude .git/ --progress --retries 10

## Papers

rclone sync \
    ~/documents/papers \
    personal:documents/papers \
    --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

## Repositories

rclone sync \
    ~/documents/repositories \
    personal:documents/repositories \
    --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

## Projects

rclone sync \
    ~/documents/projects/amazonia-yanomami \
    personal:documents/projects/amazonia-yanomami \
    --exclude .git/ --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

rclone sync \
    ~/documents/projects/change-of-support \
    personal:documents/projects/change-of-support \
    --exclude "/results/**" --exclude ".git/**" --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

rclone sync \
    ~/documents/projects/food-insecurity-mapping \
    personal:documents/projects/food-insecurity-mapping \
    --exclude ".git/**" --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

rclone sync \
    ~/documents/projects/latent-stunting-age \
    personal:documents/projects/latent-stunting-age \
    --exclude ".git/**" --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

rclone sync \
    ~/documents/projects/parametric-nowcasting \
    personal:documents/projects/parametric-nowcasting \
    --exclude ".git/**" --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

rclone sync \
    ~/documents/projects/parametric-nowcasting-check \
    personal:documents/projects/parametric-nowcasting-check \
    --exclude ".git/**" --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

rclone sync \
    ~/documents/projects/spatial-functional-clustering \
    personal:documents/projects/spatial-functional-clustering \
    --exclude "/data/processed/**" --exclude ".git/**" --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

## Repositories

rclone sync \
    ~/documents/repositories \
    personal:documents/repositories \
    --exclude ".git/**" --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

## Teaching

rclone sync \
    ~/documents/teaching \
    personal:documents/teaching \
    --exclude ".git/**" --progress --retries 10 --size-only --transfers=8 --checkers=8 --drive-chunk-size=256M

## Texmf

rclone sync \
    ~/documents/texmf \
    personal:documents/texmf \
    --exclude ".git/**" --progress --retries 10
