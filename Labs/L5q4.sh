#!/bin/bash

# This script finds all FASTA files in the current directory,
# and prints the filename and the headers from each file.
#
# To run this script, use the following command in your terminal:
# bash L5q4.sh

# Use a for loop to iterate through all files ending with .fasta
for file in *.fasta
do
  # Check if any FASTA files were found. This handles the case
  # where no .fasta files exist and the wildcard doesn't expand.
  if [ -e "$file" ]; then
    echo "--- File: $file ---"
    # Use 'grep' to find all lines that start with '>'
    # The '>' is the standard FASTA header indicator.
    grep -E '^>' "$file"
    echo "" # Print a blank line for readability between files
  fi
done

