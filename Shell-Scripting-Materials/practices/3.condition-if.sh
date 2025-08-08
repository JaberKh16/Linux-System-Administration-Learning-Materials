#!/bin/bash
# A simple calculator script that performs basic arithmetic operations


# Prompt user for two numbers
read -p "Enter number 1: " num
read -p "Enter number 2: " num2

# Validate that both inputs are integers
if [[ $num =~ ^-?[0-9]+$ ]] && [[ $num2 =~ ^-?[0-9]+$ ]]; then

    # Additional input validation
    if [[ $num -lt 0 || $num2 -lt 0 ]]; then
        echo "❌ Negative numbers are not allowed."
        exit 1
    fi

    if [[ $num -eq 0 && $num2 -eq 0 ]]; then
        echo "❌ Both numbers are zero. No meaningful operation."
        exit 1
    fi

    # Ask user to choose an operation
    echo "Choose an operation:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Modulus"

    read -p "Enter your choice (1-5): " choice

    case $choice in
        1)
            result=$((num + num2))
            echo "✅ Sum: $result"
            ;;
        2)
            result=$((num - num2))
            echo "✅ Difference: $result"
            ;;
        3)
            result=$((num * num2))
            echo "✅ Product: $result"
            ;;
        4)
            if [[ $num2 -eq 0 ]]; then
                echo "❌ Division by zero is not allowed."
                exit 1
            fi
            result=$((num / num2))
            echo "✅ Quotient: $result"
            ;;
        5)
            if [[ $num2 -eq 0 ]]; then
                echo "❌ Modulus by zero is not allowed."
                exit 1
            fi
            result=$((num % num2))
            echo "✅ Remainder: $result"
            ;;
        *)
            echo "❌ Invalid choice. Please enter a number between 1 and 5."
            exit 1
            ;;
    esac

else
    echo "❌ Invalid input. Please enter valid integers."
    exit 1
fi
