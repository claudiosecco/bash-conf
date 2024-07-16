#!/bin/bash

# usage example
# cd /path/to/obsidian/vault
# find_replace.sh "Keep/Label/code" "code" ".txt"
# third argumet is optional. If ommited .md is considered

# Check if the correct number of arguments is provided
if [ "$#" -lt 2 ] || [ "$#" -gt 3 ]; then
  echo "Usage: $0 <find_string> <replace_string> [file_extension]"
  exit 1
fi

# Assign arguments to variables
find_string=$1
replace_string=$2
file_extension=${3:-.md}

# Process all files with the specified extension recursively in the current 
# directory and subdirectories
find . -type f -name "*${file_extension}" | while read -r file; do
  # Use awk to replace the find_string with replace_string
  awk -v find="$find_string" -v replace="$replace_string" \
    '{gsub(find, replace); print}' "$file" > temp && mv temp "$file"
  echo "Processed: $file"
done

echo "All matching tags have been replaced."
