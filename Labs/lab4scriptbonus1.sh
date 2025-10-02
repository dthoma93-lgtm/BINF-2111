#!/bin/bash

# This script iterates through an array of aminos.

# Amino acid array
amino_acids=("Methionine" "Leucine" "Cysteine" "Alanine" "Valine" "Tyrosine" "Proline")

# Loop through each acid and display it
echo "Iterating through the array of amino acids:"
for acid in "${amino_acids[@]}"; do
  echo "$acid"
done

echo ""
echo "Iteration looped."

