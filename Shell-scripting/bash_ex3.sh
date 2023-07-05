#! /bin/bash
# Exercise 3
# Create a bash script that would display a file content in upper case letters.
# The file path must be passed to the script as an argument.

echo "Displaying Content of $1 in upper case."
cat $1 | tr [:lower:] [:upper:]
