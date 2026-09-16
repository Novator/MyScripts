#!/bin/sh

test -d /usr/bin/yt_dlp.old && rm -rf /usr/bin/yt_dlp.old
mv /usr/bin/yt_dlp /usr/bin/yt_dlp.old
rsync -a --info=progress2 ./yt_dlp /usr/bin/
