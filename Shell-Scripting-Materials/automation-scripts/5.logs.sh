#!/bin/bash

# Prompt to press any key to continue
read -n 1 -p "Press any key to continue... " key
echo  # Print a newline after the key press

# Show menu
echo "Please select an option:"
echo "1) Backup"
echo "2) Restore"
echo "3) Setup Drive"
echo "4) Help"
echo "5) View Log"
echo "6) Clear Screen & Refresh USB Status"
echo "7) Exit"

# Read one character silently
read -n 1 -s -p "Enter your choice [1-7]: " choice
echo  # Print newline after input

# Case handling
case $choice in
    1)
        echo "Starting backup..."
        # backup function or command goes here
        ;;
    2)
        echo "Starting restore..."
        # restore function or command goes here
        ;;
    3)
        echo "Setting up drive..."
        # setup_drive function or command goes here
        ;;
    4)
        echo "Showing help..."
        # help function or command goes here
        ;;
    5)
        echo "Showing logs..."
        # log function or command goes here
        ;;
    6)
        clear
        echo -e "\nRefreshing USB Status..."
        sleep 2
        # insert your USB status check logic here
        ;;
    7)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid option. Please try again."
        ;;
esac
