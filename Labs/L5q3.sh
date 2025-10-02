#!/bin/bash

# This script finds the longest string and prints result.
#
# To run this script, use the following command in your terminal:
# bash L5q3.sh

# Define the three strings
string1="This is a string"
string2="Hello"
string3="Strings are very cool"

#string length storage
len1=${#string1}
len2=${#string2}
len3=${#string3}

#using the if/elif/ else for sorting

if (( len1 > len2 && len1 > len3 )); then
  echo "The biggest string is number 1: '$string1'"
elif (( len2 > len1 && len2 > len3 )); then
  echo "The biggest string is number 2: '$string2'"
elif (( len3 > len1 && len3 > len2 )); then
  echo "The biggest string is number 3: '$string3'"
else
  # This block handles cases where there are equal values
  echo "Multiple strings have the same, largest length."
fi
