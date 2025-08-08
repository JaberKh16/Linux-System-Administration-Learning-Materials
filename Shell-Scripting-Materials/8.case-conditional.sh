#!/bin/bash

# This script demonstrates the use of conditionals in bash scripting.
# # It checks if a file exists and prints a message accordingly.
# # Define a file name
file_name="example.txt"

# Check if the file exists
case "$file_name" in
    *.txt)
        echo "This is a text file."
        ;;
    *.sh)
        echo "This is a shell script file."
        ;;
    *)
        echo "This is some other type of file."
        ;;
esac
