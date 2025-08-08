#!/bin/bash

# This script demonstrates the use of random global variables in a shell script.

# Define a random global variable
random_number=$((RANDOM % 100))  # Generates a random number between 0 and 99
echo "Random number generated: $random_number"
# Define another random global variable
random_string=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)  # Generates a random alphanumeric string of length 10
echo "Random string generated: $random_string"
# Define a global variable with the current timestamp
current_timestamp=$(date +%s)  # Gets the current timestamp in seconds since epoch
echo "Current timestamp: $current_timestamp"
# Define a global variable with the current user's home directory
user_home_directory=$(eval echo ~$USER)  # Gets the home directory of the current user
echo "User's home directory: $user_home_directory"
# Define a global variable with the current shell process ID
current_shell_pid=$$  # Gets the process ID of the current shell
echo "Current shell process ID: $current_shell_pid"
# Define a global variable with the hostname of the machine
current_hostname=$(hostname)  # Gets the hostname of the machine
echo "Current hostname: $current_hostname"

# Define a global variable with the current shell name
current_shell_name=$(basename "$SHELL")  # Gets the name of the current shell
echo "Current shell name: $current_shell_name"

# Define a global variable with the current working directory
current_working_directory=$(pwd)  # Gets the current working directory
echo "Current working directory: $current_working_directory"
