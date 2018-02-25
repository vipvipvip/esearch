#!/bin/bash
if [[ ! -d "books" ]]; then
    mkdir "books"
fi
while IFS='' read -r line || [[ -n "$line" ]]; do
  A=${line##*/}
  curl -o ./books/$A "$(echo $line  | awk '{printf("%s", $0)}')"
done < "download_links.txt"

# Remove trailing underscore
for f in ./books/*.*;
do
  mv -- "$f" "${f%_}"
done
