#!/bin/bash

read -p "Are you a user? Y/N: " ANSWER
case $ANSWER in
    [yY] | [yY][eE][sS])
        echo "You are a user."
        ;;
    [nN] | [nN][oO])
        echo "You are not a user."
        ;;
    *)
        echo "Invalid input. Please enter Y or N."
        ;;
esac
