#!/bin/bash
mkdir books
while IFS='' read -r line || [[ -n "$line" ]]; do
    #echo "Text read from file: $line"
    #echo $line
    #echo "$(echo $line | sed 's/ //g' | awk '{printf("%s", $0);}')"
    curl -O  "$(echo $line | sed 's/ //g' | awk '{printf("%s", $0);}')"
done < "download_links.txt"

#mkdir books
# wget -i download_links.txt -P books/
#xargs -n 1 curl -O < download_links.txt
# Normalize extensions (strip .utf-8 suffix)
#for f in ./books/*.txt.utf-8;
#do
#  mv -- "$f" "${f%.txt.utf-8}.txt"
#done