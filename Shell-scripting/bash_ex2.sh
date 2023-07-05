#! /bin/bash

#Create a bash script named cal.sh that would display the calendar of given year.
#The script would prompt the user to enter a year; then, it would display the corresponding year’s calendar.

echo "Calendar"

read -p "Please, type the year: " YEAR
cal $YEAR
