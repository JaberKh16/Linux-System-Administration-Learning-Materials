#!/bin/bash

# This script checks if a directory exists, creates it if not, sets permissions,
# and reads the content of a specified file within that directory.

# Usage: ./script.sh [directory_name] [file_name]
# Function to read file content
read_file_content() {
    local directory=$1
    local file_name=$2
    local full_path="$directory/$file_name"

    if [ -f "$full_path" ]; then
        echo "Reading content of '$file_name' in '$directory':"

        # Read file line by line using a for loop
        IFS=''                   # Prevents trimming whitespace
        mapfile -t lines < "$full_path"  # Read all lines into array

        for line in "${lines[@]}"; do
            echo "$line"
        done

    else
        echo "File '$file_name' does not exist in '$directory'."
    fi
}


# Check if arguments were passed; if not, prompt for them
if [ -z "$1" ]; then
    read -p "Enter directory name: " directory
else
    directory="$1"
fi

if [ -z "$2" ]; then
    read -p "Enter file name: " file_name
else
    file_name="$2"
fi

# Check if the directory exists
if [ ! -d "$directory" ]; then
    mkdir "$directory"
    echo "Directory '$directory' created."

    # Change permissions and ownership
    chmod 755 "$directory"
    chown "$(whoami):$(id -gn)" "$directory"
    echo "Permissions set to 755 and ownership changed to $(whoami):$(id -gn)."
else
    echo "Directory '$directory' already exists."
fi

# Check if the file exists in the directory
if [ -e "$directory/$file_name" ]; then
    echo "File '$file_name' exists in '$directory'."
    read_file_content "$directory" "$file_name"
else
    echo "File '$file_name' does not exist in '$directory'."
fi
