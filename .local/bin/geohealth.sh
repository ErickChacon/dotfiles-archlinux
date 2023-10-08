#!/bin/sh

if [ "$1" = "u" ]; then
    fusermount -u ~/docserver
else
    sshfs -o uid=1000,gid=1000 geohealth1:/home/chaconea/documents ~/docserver
fi
