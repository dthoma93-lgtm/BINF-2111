#!/bin/bash

# Define an array of amino acids
amino_acids=("Methionine" "Leucine" "Cysteine" "Alanine" "Valine" "Tyrosine" "Proline")

# Print all elements of the array
echo "The amino acids in the array are:"
echo "${amino_acids[@]}"

# Print the number of elements in the array
echo ""
echo "The array contains ${#amino_acids[@]} amino acids."

