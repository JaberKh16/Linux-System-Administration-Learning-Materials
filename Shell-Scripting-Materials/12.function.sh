#!/bin/bash

# Exaple of non parameterized function
function function_name() {
  echo "This is a function"
}
# Call the function
function_name


# Example of parameterized function
# function with parameters
function greet() {
  local name=$1
  local greeting=$2
  echo "$greeting, $name!"
}
# Call the function with parameters
greet "Alice" "Hello"
