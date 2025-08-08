#!/bin/bash

echo -p "Enter the filename want to read?"
read $1


if [[ -f "$FILENAME" ]]; 
then 
    LINE=1
    while read -r CURRENT_LINE;
    do
        echo "Line $LINE: $CURRENT_LINE"
        ((LINE++))
    done < "$1" # read from the file passed as the first argument
else 
    echo "$FILENAME doesn't exist."





