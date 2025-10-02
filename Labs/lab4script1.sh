#!/bash/bin

#Variable list below
#Script for taking five variables for aminos and totaling all string length 

methionine="Methionine"
leucine="Leucine"
cysteine="Cysteine" 
alanine="Alanine"
valine="Valine"

#print five variables below
echo "five variables include:"
echo "$methionine"
echo "$leucine"
echo "$cysteine"
echo "$alanine"
echo "$valine"

#calculating the length of each variable using the $# variable function
len_methionine=${#methionine}
len_leucine=${#leucine}
len_cysteine=${#cysteine}
len_alanine=${#alanine}
len_valine=${#valine}

#sum of all lengths
total_length=$((len_methionine + len_leucine + len_cysteine + len_alanine + len_valine))

# Print the total combined length
echo ""
echo "The combined length of all variables is: $total_length"
