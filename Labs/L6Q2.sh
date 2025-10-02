#print those lines and characters

#checking for filename as a variable in command line

if [ -z "$1" ]; then
echo "usage $0 <filename>"
exit 1 
fi

filename=$1
 
#checking for existence and readability
if [! -f "$filename"]; then
echo: "Error: File '$filename' not found."
exit 1
fi

echo "Reading File: $filename"
echo "---------------"

#time for a while loop to read line by line
while IFS= read -r line; do
  # Get the character count of the current line.
  char_count=${#line}
# Print the line and its character count.
  echo "$line (Characters: $char_count)"
done < "$filename"

echo "--------------------------"
echo "file read."





