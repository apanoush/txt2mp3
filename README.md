# txt2mp3

little script to convert a `text` file with song titles on each line to a folder with the corresponding `mp3s`

the folder will be created inside the directory of the text file

the song names will be converted by searching them up on youtube and then downloading as mp3 the corresponding audio. this is made possible by the `yt-dlp` project, which is linked in the `dependencies` subsection

## usage

`src/txt2mp3.sh PATH`

`PATH` is the text file path where are the song names to be converted

make sure to complete the last line (the last song name) in the text file by pressing enter afterwards and having a blank line at the end. otherwise the last song wont be downloaded

## dependencies

- [yt-dlp](https://github.com/yt-dlp/yt-dlp)

