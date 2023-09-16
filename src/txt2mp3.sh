#!/bin/bash

if [ $# -eq 0 ]
	then 
		echo Usage txt2mp3.sh PATH, where PATH is the txt file path

else

    input="$1"

    mkdir mp3s
    cd mp3s

    while read -r line
    do
    yt-dlp --extract-audio --add-metadata --embed-thumbnail --audio-quality 0 --audio-format mp3 "$line"
    done < "$input"

