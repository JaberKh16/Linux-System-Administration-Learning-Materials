#!/bin/bash

# declare an array
# colleciton of items having spaces as separator
colors=('Red' 'Blue' 'Green')

# access 0th index value
echo "colors[0]${colors[0]}"; 

# access all values
echo "colors[] containing values: ${colors[@]}"

# access indices value
echo "colors[] indices are: ${!colors[@]}"

# get the length
echo "Length of colors[]: ${#colors[@]}"
