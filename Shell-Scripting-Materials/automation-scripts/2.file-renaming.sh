#!/bin/bash
# This script renames all .txt files in the current directory to a new name.

echo -p "Enter the new name for the .txt files: "
read new_name
FILE=$(ls *.txt | head -n 1)
for FILE in *.txt; do
    if [ -e "$FILE" ]; then
        echo "Renaming '$FILE' to '$new_name'"
        mv "$FILE" "$new_name"
    else
        echo "File '$FILE' does not exist."
    fi
done
