#!/bin/bash

#program for quick tsv to csv
# Variable $1 and Variable $0
# Check if the user provided a filename
if [ -z "$1" ]; then
  echo "Usage: bash $0 <input_file.tsv>"
  exit 1
fi
#Using 'tr' command to translate tabs to commas
#cat command gives files to translate
cat "$1" | tr '\t' ','
#the command to run this is bash L5q2.sh input_file.tsv



