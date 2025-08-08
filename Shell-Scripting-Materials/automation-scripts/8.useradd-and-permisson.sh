#!/bin/bash

# Create a new user and set permissions
# # Usage: ./10.useradd-and-permission.sh <username> <directory>

read -p "Enter the user want to add: " username
read -p "Enter the directory want to set permission: " directory
# Check if the user already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
else
    # Create the user
    sudo useradd -m "$username"
    echo "User '$username' created successfully."
    # see the newly created user
    sudo cat /etc/passwd | grep "$username"
