#!/bin/bash

# Use of braces, brackets, and parentheses in bash
    # Braces {} are used for variable expansion, command grouping, and parameter expansion
    # Brackets [] are used for test conditions and array indexing
    # Parentheses () are used for command substitution, subshells, and arithmetic expressions
    # # Example of using braces for variable expansion
msg="Hello Shell"
echo "${msg} World"  # This will print "Hello Shell World"
# Example of using brackets for test conditions
if [ -z "$msg" ]; then
    echo "msg is empty"
else
    echo "msg is not empty"
fi
# Example of using parentheses for command substitution
current_date=$(date)
echo "Current date is: $current_date"  # This will print the current date
# Example of using parentheses for arithmetic expressions
num1=5
num2=10
sum=$((num1 + num2))
echo "Sum of $num1 and $num2 is: $sum"  # This will print "Sum of 5 and 10 is: 15"
# Example of using parentheses for subshells
(
    echo "This is a subshell"
    echo "Current directory in subshell: $(pwd)"
)
# Example of using braces for command grouping
{
    echo "This is a command group"
    echo "Current directory: $(pwd)"
}  # This will execute both commands in the same context
# Example of using brackets for array indexing
my_array=(one two three)
echo "First element of my_array: ${my_array[0]}"  # This will print "First element of my_array: one"
echo "All elements of my_array: ${my_array[*]}"  # This will print "All elements of my_array: one two three"
# Example of using braces for parameter expansion
# This is useful when you want to concatenate the variable with other text
echo "${msg} World"  # This will print "Hello Shell World"
# Example of using brackets for string length
string_length=${#msg}
echo "Length of msg: $string_length"  # This will print "Length of msg: 11"
# Example of using parentheses for process substitution
# This allows you to use the output of a command as if it were a file
while read line; do
    echo "Line from process substitution: $line"
done < <(echo -e "Line 1\nLine 2\nLine 3")  # This will print each line from the process substitution
# Example of using braces for brace expansion
# This allows you to generate a sequence of strings
echo {1..5}  # This will print "1 2 3 4 5"
echo {a..e}  # This will print "a b c d e"
echo {A..E}  # This will print "A B C D E"
# Example of using brackets for pattern matching
# This allows you to match a specific pattern in a string
pattern="Hello"
if [[ "$msg" == *"$pattern"* ]]; then
    echo "msg contains the pattern '$pattern'"
else
    echo "msg does not contain the pattern '$pattern'"
fi
# Example of using parentheses for array initialization
# This allows you to create an array with multiple elements
my_array=("apple" "banana" "cherry")
echo "Elements of my_array: ${my_array[*]}"  # This will print "Elements of my_array: apple banana cherry"
# Example of using braces for string manipulation
# This allows you to manipulate strings in various ways
string="Hello, World!"
echo "Uppercase: ${string^^}"  # This will print "HELLO, WORLD!"
echo "Lowercase: ${string,,}"  # This will print "hello, world!"
echo "Substring: ${string:7:5}"  # This will print "World"
