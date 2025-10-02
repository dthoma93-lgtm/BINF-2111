#!/bin/bash

# This script is an until  loop using a while loop and a counter.

# Initialize variables
counter=0
quote="This script will run round and round"

# Loop until the counter is no longer less than 10
while [ $counter -lt 10 ]; do
  echo "$quote"
  quote="$quote and again"
  counter=$((counter + 1))
done

# Print the final statement
echo "Are you dizzy yet?"
