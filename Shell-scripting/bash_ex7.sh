#! /bin/bash
# Excercise 7
# Create a bash script that would determine whether or not a given year is a leap year. 
# A year is a leap year if one of the following conditions is satisfied:
# • Year is multiple of 400.
# • Year is multiple of 4 and not multiple of 100.
# You can pass the year as an argument to your script.

read -p "Please enter a year: " YEAR
if [ $(($YEAR % 400)) -eq 0 ]; then
  echo "$YEAR is a leap year"
elif [ $(($YEAR % 4)) -eq 0 ]; then
  if [ $(($YEAR % 100)) -ne 0 ]; then
    echo "$YEAR is a leap year"
  else
    echo "$YEAR is not a leap year"
  fi
else
  echo "$YEAR is not a leap year"
fi
