#!/bin/bash

# Improved script with error handling

file_to_process="my_file.txt"

# Check if the file exists
if [ ! -f "$file_to_process" ]; then
  echo "Error: File '$file_to_process' not found."
exit 1
fi

# Process the file
while IFS= read -r line; do
  echo "Processing line: $line"
done < "$file_to_process"

# Exit successfully
exit 0