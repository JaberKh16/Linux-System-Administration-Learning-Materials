#!/bin/bash

# Redirecting output and error to files
# This will redirect standard output (stdout) to file.txt and standard error (stderr) to error.txt
# The command 'ls -la' will list files in the current directory with detailed information
# The output will be saved in file.txt and any errors will be saved in error.txt
ls -la 1>file.txt 2>error.txt

# Redirecting both stdout and stderr to the same file
# This will redirect both standard output and standard error to combined.txt
# The command 'ls -la' will list files in the current directory with detailed information
# The output and errors will be saved in combined.txt
# The '2>&1' part means "redirect stderr to stdout"
ls -la >combined.txt 2>&1
