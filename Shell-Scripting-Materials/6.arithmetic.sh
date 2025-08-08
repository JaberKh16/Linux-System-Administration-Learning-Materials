#!/bin/bash

echo "Enter a number1:"
read num1
echo "Enter a number2:"
read num2

# Perform arithmetic operations
sum=$((num1 + num2))
diff=$((num1 - num2))
prod=$((num1 * num2))
quot=$((num1 / num2))
rem=$((num1 % num2))
echo "Sum: $sum"
echo "Difference: $diff"
echo "Product: $prod"
echo "Quotient: $quot"
echo "Remainder: $rem"
