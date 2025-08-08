#!/bin/bash

# Example-1
x=11
for (( ; x <= 20; x++ ))
do
    echo "Value of x is: $x"
done


# Example-2
for $i in {1..5}
do
    echo "Value of i is: $i"
done
