#! /bin/bash
# Exercise 6

# Create a bash script that would do the following:
# • Ask the user to enter a string with asterisks.
# • Remove all asterisks (*) in the string.
# • Change all the letters in the string to uppercase.
# • Output the updated string to the terminal.
# Restriction: You are only allowed to use the echo command!

read -p "Please write a word with * on it: " WORD
WORD=${WORD//\*}
echo "Updated word: " $WORD
