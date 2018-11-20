#!/bin/sh
# convert all MP3 files in the current directory to 44100/16/1 WAV.

rm -f *.wav

for i in *.mp3; do
    path="${i}"
    name="${path%.*}"

    ffmpeg -i "${path}" -acodec pcm_s16le -ar 44100 -ac 1 "${name}.wav"
done

