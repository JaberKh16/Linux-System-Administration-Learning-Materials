#!/bin/bash

echo "Enter a website URL (without http:// or https://):"
read website

# Ping the website
while true; do
    if ping -q -c 2 -W 1 "$website" &> /dev/null; then
        echo "Ping to $website successful."
        break
    else
        echo "Ping to $website failed. Retrying..."
        sleep 2
    fi
done
