#!/bin/sh
#
# Andrey A. Ugolnik
# http://www.ugolnik.info
# andrey@ugolnik.info
#
# convert all OGG files in the current directory to MP3.

for i in *.ogg; do
    path="${i}"
    name="${path%.*}.mp3"

    rm -f "${name}"
    ffmpeg -i "${path}" -acodec mp3 "${name}"
done

