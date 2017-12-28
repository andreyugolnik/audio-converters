#!/bin/sh
# convert all WAV files in the current directory to MP3.

for i in *.wav; do
    path="${i}"
    name="${path%.*}.mp3"

    rm -f "${name}"
    ffmpeg -i "${path}" -acodec mp3 "${name}"
    rm "${path}"
done

