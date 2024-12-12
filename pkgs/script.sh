#!/bin/bash

file_count=0

for file in /etc/*; do
  if [ -f "$file" ] && [ ! -L "$file" ]; then
    ((file_count++))
  fi
done

echo "The script was written by Yaroslav"

echo "Number of files in the directory /etc: $file_count"

