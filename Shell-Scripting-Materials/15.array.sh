#!/bin/bash

# declare an array
# colleciton of items having spaces as separator
colors=('Red' 'Blue' 'Green')

# access 0th index value
echo "colors[0]${colors[0]}";

# access all values
# using @ or * will give all values
echo "colors[] containing values: ${colors[@]}"
echo "colors[] containing values: ${colors[*]}"

# access indices value
echo "colors[] indices are: ${!colors[@]}"

# get the length
echo "Length of colors[]: ${#colors[@]}"

# get values from 1st to 2nd index
echo "colors[1:2] values are: ${colors[@]:1:2}"

# update the array
colors[0]="Yellow" # update or replace 0th index value
echo "Updated colors[0]: ${colors[0]}"


# add new value to the array
colors+=('Black') # add new value to the end of the array
echo "Added new value to colors[]: ${colors[@]}"

# delete or remove or unset an element from the array
unset colors[1] # remove 1st index value
echo "After removing 1st index value: ${colors[@]}"



# Example:2
# Key-Value Pair Array
declare -A person
# Associative array (key-value pairs)
person=(
    [name]="John Doe"
    [age]=30
    [city]="New York"
)
# Accessing values
echo "Name: ${person[name]}"
echo "Age: ${person[age]}"
echo "City: ${person[city]}"

# access all keys
echo "Keys: ${!person[@]}"
# access all values
echo "Values: ${person[@]}"

# Adding a new key-value pair
person[country]="USA"
echo "Country: ${person[country]}"
# Deleting a key-value pair
unset person[age]
echo "After deleting age: ${person[age]}" # This will be empty
