#!/bin/bash

echo "String1: "
read str1

echo "String2: "
read str2

if [[ "$str1" == "$str2" ]]
then 
    echo "Match Case"
else
    echo "Not Matched Case"
fi
