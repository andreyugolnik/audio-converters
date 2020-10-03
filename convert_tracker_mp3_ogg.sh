#!/bin/sh
#
# Andrey A. Ugolnik
# http://www.ugolnik.info
# andrey@ugolnik.info
#
# convert all input file to MP3 and 1ch_44KHz_OGG.

if test -f "$1"
then
    input_file="$1"
    input_name="${input_file%.*}"
    input_wav="${input_name}.wav"
    mp3="${input_name}.mp3"
    ogg="${input_name}.ogg"

    rm -f "${mp3}" "${ogg}" "${input_wav}"

    xmp "${input_file}" -o "${input_wav}"

    ffmpeg -i "${input_wav}" -acodec mp3 "${mp3}"

    oggenc --downmix "${input_wav}" -o "${ogg}"
else
    echo "No input file provided."
fi
