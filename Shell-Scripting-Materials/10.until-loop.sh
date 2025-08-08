#!/bin/bash


x=11
until [[ $x -gt 20 ]]
do
    echo "Value of x is: $x"
    ((x++))  # Increment x by 1
done
