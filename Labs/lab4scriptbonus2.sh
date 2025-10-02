#!/bin/bash

# This script iterates through an array of amino acids using awk.

# Define the array of amino acids
amino_acids=("Methionine" "Leucine" "Cysteine" "Alanine" "Valine" "Tyrosine" "Proline")

echo "Iterating through the array of amino acids using awk:"

# Pipe the array elements to awk, with each element on a new line
# The `BEGIN` block sets the field separator (FS) to a newline character
# The `print $0` command in awk prints each full line (which is an amino acid)
# The `END` block is executed after all input lines are processed
for acid in "${amino_acids[@]}"; do
  echo "$acid"
done | awk '
BEGIN {
  # Set the field separator to a newline
  FS = "\n"
  print "Printing each amino acid:"
}
{
  # This action block is executed for each line of input
  print $0
}
