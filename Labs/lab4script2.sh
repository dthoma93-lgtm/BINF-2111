#!/bin/bash

# This script is supposed to count start and stop codons
# These are generally at the begining and end of sequences

# defining codon variable below
START_CODON="ATG"
STOP_CODON_1="TAA"
STOP_CODON_2="TAG"
STOP_CODON_3="TGA"

# Initialize counters
start_codon_count=0
stop_codon_count=0

#cRead the fasta file line by line
while IFS= read -r line; do
  # Skip header lines, which start with '>'
  if [[ "$line" == ">"* ]]; then
    continue
  fi
#does a line start with a codon?
if [[ "$line" == "${START_CODON}"* ]]; then
    ((start_codon_count++))
  fi
# Checking For any of the three stop codons
 if [[ "$line" == *"${STOP_CODON_1}" ]] || [[ "$line" == *"${STOP_CODON_2}" ]] || [[ "$line" == *"${STOP_CODON_3}" ]]; then
    ((stop_codon_count++))
  fi
done < "example2.fasta"

# display some final results
echo "Analysis of example2.fasta:"
echo "---------------------------"
echo "Number of Start Codons (${START_CODON}): $start_codon_count"
echo "Number of Stop Codons (${STOP_CODON_1}, ${STOP_CODON_2}, ${STOP_CODON_3}): $stop_codon_count"

