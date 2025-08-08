#!/bin/bash

# Define a variable
# Note: shell variables are case-sensitive and treats the variables as shell command so there will be no spaces around the equal sign
# If you want to use spaces, you can use quotes around the value
# Example: msg="Hello Shell"
msg="Hello Shelll"


# Print the variable in various ways
# you can use the variable by prefixing it with a dollar sign
echo $msg
# print the variable with double quotes
echo "$msg"
# print the variable with single quotes
echo '$msg'  # This will print the literal string $msg, not the value of the variable
# print the variable with backticks
echo `echo $msg`  # This will execute the command and print the value of the variable
# print the variable with command substitution
echo $(echo $msg)  # This is the preferred way to do command substitution in modern scripts
# print the variable with printf
printf "%s\n" "$msg"  # This is a more robust way to print variables
# print the variable with echo and a newline
echo -e "$msg\n"  # The -e option enables interpretation of backslash escapes
# print the variable with {} syntax
# This is useful when you want to concatenate the variable with other text
echo "${msg} World"  # This will print "Hello Shell World"
