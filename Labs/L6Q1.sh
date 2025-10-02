#!/bin/bash

#script for the amino acid array

#making an amino acid list
amino_acids=(
"methonine"
"leucine"
"cysteine"
"alanine"
"valine"
"tyrosine"
"proline"
)

#access array elements in a for loop and get length
for i in "${amino_acids[@]}"; do
  echo "$i has a length of ${#i} characters."
done


