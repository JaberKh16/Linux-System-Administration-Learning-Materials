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


# Example-2: Length of string
# ${#var_name} here # to find the length
echo -e "Length of song is: ${#song}"



# read string with 'read'
# here flag, -p, prompt and goes to next line
read -p 'Type your name and press enter: ' NAME
echo "Hello $NAME"

# Example-3: Substring Find
# colon (:) operator inside the parameter expansion, providing the starting position of substring and
# optionally length of the substring
NAME=Baeldung
echo ${NAME:6}
echo ${NAME:0:4}


# Example-4: String Concatenation
# Concatenation is done by simply placing the strings next to each other
STR1="Hello"
STR2="World"
CONCATENATED="$STR1 $STR2"
echo $CONCATENATED


# Example-5: String Comparison
# String comparison is done using the `=` operator inside the `[[ ]]` conditional expression
STR1="Hello"
STR2="World"
if [[ $STR1 == $STR2 ]]; then
    echo "Strings are equal"
else
    echo "Strings are not equal"
fi


# Example-6: String Replacement
# String replacement can be done using the `${variable//search/replace}` syntax
TEXT="Hello World"
REPLACED_TEXT=${TEXT//World/Baeldung}
echo $REPLACED_TEXT


# Example-7: String to Uppercase
# Convert a string to uppercase using the `^^` operator
TEXT="hello world"
UPPERCASE_TEXT=${TEXT^^}
echo $UPPERCASE_TEXT

# Example-8: String to Lowercase
# Convert a string to lowercase using the `,,` operator
TEXT="HELLO WORLD"
LOWERCASE_TEXT=${TEXT,,}
echo $LOWERCASE_TEXT


# Example-9: String Splitting
# Split a string into an array using the `IFS` (Internal Field Separator)
IFS=' ' read -r -a ARRAY <<< "Hello World from Baeldung"
echo "Array elements:"
for ELEMENT in "${ARRAY[@]}"; do
    echo $ELEMENT
done

# Example-10: String Trimming
# Trim leading and trailing whitespace using `sed`
TEXT="   Hello World   "
TRIMMED_TEXT=$(echo "$TEXT" | sed 's/^[ \t]*//; s/[ \t]*$//')
echo "Trimmed text: '$TRIMMED_TEXT'"


# Example-11: String Reversal
# Reverse a string using `rev` command
TEXT="Hello World"
REVERSED_TEXT=$(echo "$TEXT" | rev)
echo "Reversed text: $REVERSED_TEXT"
