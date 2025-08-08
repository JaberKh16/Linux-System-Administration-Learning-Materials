#!/bin/bash

x=11
while [[ $x -le 20 ]]
do
    echo "Value of x is: $x"
    ((x++))  # Increment x by 1
done
