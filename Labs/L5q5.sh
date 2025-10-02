#!/bin/bash

# This script prints a given range of lines from a given file.
#
# To run this script, use the following command in your terminal,
# replacing the placeholders with your file and line numbers:
# bash L5q5.sh <filename> <start_line> <end_line>
#
#For example:
#bash L5q5.sh secrets.txt 3 6

#checking that the number of arguments is correct to avoid errors
if [ "$#" -ne 3 ]; then
  echo "Error: Incorrect number of arguments."
  echo "Usage: bash print_line_range.sh <filename> <start_line> 
<end_line>"
  exit 1
fi
#assigning arguments to variables for the program to read
filename="$1"
start_line="$2"
end_line="$3"

#checking if files exist!

if [ ! -f "$filename" ]; then
  echo "Error: File '$filename' not found."
  exit 1
fi

#sed now to print the specified line range
#-n to avoid printing all
# 'p' to print only lines to match the range
sed -n "${start_line},${end_line}p" "$filename"
