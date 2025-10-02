#!/bin/bash

# This script defines a function to tell you some useful things.

# Function to print personal and system details
function print_user_info() {
  echo "Name: Daltoni"
  echo "Username: $USER"
  echo "Date/Time: $(date)"
  echo "Current Directory: $PWD"
}

# Call the function
print_user_info

