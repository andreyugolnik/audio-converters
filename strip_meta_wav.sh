#!/bin/sh
#
# Andrey A. Ugolnik
# http://www.ugolnik.info
# andrey@ugolnik.info
#
# A tool that removes metadata from WAV files.

for i in *.wav; do
    path="${i}"
    name="~${path%.*}.wav"

    ffmpeg -i "${path}" -map_metadata -1 -fflags +bitexact "${name}"
    mv -f "${name}" "${path}"
done
