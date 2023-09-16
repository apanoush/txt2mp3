# txt2mp3

little script to convert a `text` file with song titles on each line to a folder with the corresponding `mp3s`

make sure to complete the last line (the last song name) in the text file by pressing enter afterwards and having a blank line at the end. otherwise the last song wont be downloaded

## usage

`src/txt2mp3.sh PATH`

`PATH` is the text file path where are the song names to be converted

## dependencies

- [yt-dlp](https://github.com/yt-dlp/yt-dlp)

