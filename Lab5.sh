#!/bin/bash


# This script will download the CSV file from the URL https://spotifycharts.com/regional and indentify the 
# most streamed song on Spotify for that given day


# This command will download the HTML file of the specified url as a text file
curl https://spotifycharts.com/regional -o SpotifyStreams.txt
# This command  will search through the file for the specified word and return the line containing the word  
grep download SpotifyStreams.txt
# This command appends the appropriate path and redownloads the appropriate CSV file 
curl https://spotifycharts.com/regional/global/daily/latest/download -o SpotifyStreams.csv
echo This is the most streamed song for the given day on Spotify 
# This commands will print the third line of the CSV file which is always the most streamed song on Spotify based upon the format
awk 'NR==3' SpotifyStreams.csv
