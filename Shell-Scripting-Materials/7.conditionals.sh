#!/bin/bash

# Example-1
num1=10
num2=20

if [ $num1 -eq $num2 ]; then
    echo "Numbers are equal"
elif [ $num1 -gt $num2 ]; then
    echo "Number 1 is greater than Number 2"
else
    echo "Number 1 is less than Number 2"
fi



# Example-2
file_name="example.txt"

# Check if the file exists
if [ -e "$file_name" ]; then
    echo "The file '$file_name' exists."
else
    echo "The file '$file_name' does not exist."
fi
