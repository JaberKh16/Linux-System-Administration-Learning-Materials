#!/bin/bash


# Example-1: declare and print string
newline=$(printf "\n")
STR1="IronMan"
STR2="Doctor DOOM"

# -e flag used for interpret escape sequence characters
echo -e "STR1: ${STR1} ${newline}"
echo -e "STR2: ${STR2} \n"



# readonly string
# -r flag to setup readonly string
declare -r song="Tada da da.."
echo -e "Lyrics: $song"


# Length of string
# ${#var_name} here # to find the length
echo -e "Length of song is: ${#song}"



# read string with 'read'
# here flag, -p, prompt and goes to next line
$ read -p 'Type your name and press enter: ' NAME
$ echo "Hello $NAME" 

# Example-3: Substring Find
# colon (:) operator inside the parameter expansion, providing the starting position of substring and 
# optionally length of the substring
$ NAME=Baeldung
$ echo ${NAME:6}
$ echo ${NAME:0:4}
