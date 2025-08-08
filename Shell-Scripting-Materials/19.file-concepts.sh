#!/bin/bash

# this script demonstrates various file concepts in bash
# File Descriptors
# File descriptors are used to access files in bash
# Standard Input (stdin) - File descriptor 0
# Standard Output (stdout) - File descriptor 1
# Standard Error (stderr) - File descriptor 2


# Example of redirecting stdout and stderr to a file
function redirect_output() {
    exec 1>output.txt  # Redirect stdout to output.txt
    exec 2>error.txt   # Redirect stderr to error.txt
}


# Example of redirecting stdin from a file
exec 0<input.txt   # Redirect stdin from input.txt


# Example of writing to stdout
echo "This will be written to output.txt"
# Example of writing to stderr
echo "This will be written to error.txt" >&2
# Example of using file descriptors
funtion write_to_custom_file(){
    # File descriptor 3 can be used for custom file operations
    exec 3>custom.txt  # Open custom.txt for writing
    echo "This is a custom file operation" >&3  # Write to custom.txt
    exec 3>&-  # Close file descriptor 3
}

# Example of check if directory or file exists
function check_file_or_directory() {
    local path="$1"
    if [[ -e "$path" ]]; then
        if [[ -d "$path" ]]; then # -d checks if the path is a directory
            echo "$path is a directory."
        elif [[ -f "$path" ]]; then # -f checks if the path is a file
            echo "$path is a file."
        else
            echo "$path exists but is neither a file nor a directory."
        fi
    else
        echo "$path does not exist."
    fi
}


# Example of using file descriptors for process substitution
# This allows you to use the output of a command as if it were a file
while read line; do
    echo "Line from process substitution: $line"
done < <(echo -e "Line 1\nLine 2\nLine 3")  # This will print each line from the process substitution


# Example of using file descriptors for named pipes (FIFOs)
# Named pipes allow you to create a pipe that can be used for inter-process communication
mkfifo my_fifo  # Create a named pipe
# Write to the named pipe in the background
(
    echo "This is a message to the named pipe" > my_fifo
) &
# Read from the named pipe
while read line; do
    echo "Read from named pipe: $line"
done < my_fifo  # This will read the message from the named pipe
