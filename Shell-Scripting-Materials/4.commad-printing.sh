#!/bin/bash

user=$(whoami)
echo "Hello $user, welcome to the shell scripting world!"

sleep 1 # sleep for`1 second

date=$(date)
echo "Current date and time: $date"

sleep 1 # sleep for`1 second

pwd=$(pwd)
echo "Your current working directory is: $(pwd)"
