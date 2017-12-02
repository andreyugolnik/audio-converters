#!/bin/sh
# convert all WAV files in the current directory to 44100/16/1 WAV.

for i in *.wav; do
    path="${i}"
    name="~${path%.*}.wav"

    ffmpeg -i "${path}" -acodec pcm_s16le -ar 44100 -ac 1 "${name}"
    mv -f "${name}" "${path}"
done

