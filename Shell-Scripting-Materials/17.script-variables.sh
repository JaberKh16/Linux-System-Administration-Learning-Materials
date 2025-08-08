#!/bin/bash

# Multi-line comments in bash can be done using the : ' ' syntax or using a here document
<<''
# Special Script Variables Are
# $0 - The name of the script
# $1, $2, ... - The first, second, etc. argument passed
# $# - The number of arguments passed
# $@ - All arguments passed as a single string
# $* - All arguments passed as an array
# $? - The exit status of the last command executed
# $$ - The process ID of the current shell
# Note: $@ and $* behave differently when quoted.
# Example script to demonstrate special variables
#

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "Number of arguments: $#"
echo "All arguments as a single string: $@"
echo "All arguments as an array: $*"
echo "Exit status of the last command: $?"
echo "Process ID of the current shell: $$"
