#!/bin/bash

# if no argument is given the script stops
if [ $# -eq 0 ]
	then 
		echo Usage txt2mp3.sh PATH, where PATH is the txt file path

else
    # saving the user input (the filepath)
    input="$1"

    # making sure the script is running inside the directory of the text file and getting its absolute path
    directory_path="$(dirname "$1")"
    absolute_path="$directory_path/$(basename "$1")"
    cd "$directory_path"

    # creating "mp3s" directory if not already existing
    mkdir -p mp3s
    cd mp3s

    # reading the text file line by line
    while read -r line
    do
    # running yt-dlp to do the download part for us
    yt-dlp --extract-audio --add-metadata --embed-thumbnail --audio-quality 0 --default-search "ytsearch" -o "%(title)s.%(ext)s" --audio-format mp3 "$line"
    done < "$absolute_path"
fi
