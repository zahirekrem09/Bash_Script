#!/bin/bash



grep '\[444\]' logfile.txt | awk  '{print $1 " " $2 " " $3}' > date_times
#grep '\[444\]' logfile.txt | awk '{print $5}' | awk -F[ '{print $1}' > usernames
grep '\[444\]' logfile.txt | awk -F: '{print $4}' > messages


while read line
do
    echo $line
done < usernames
