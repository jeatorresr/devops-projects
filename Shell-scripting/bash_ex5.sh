#! /bin/bash
# Exercise 5
# Create a bash script named salary.sh that would calculate the total net salary of an employee. The script would prompt the user to enter a monthly gross salary (before) and a tax rate (in percentage). Finally, the script would calculate and output the total net annual salary (after tax).
# Your output should be similar to this:
#     elliot@allsafe:~/scripts$ ./salary.sh
#     Please enter your monthly gross salary: 5000
#     Please enter your tax rate (in percentage): 10
#     Your total net annual salary is: 54000.00
# The formula is net salary = Gross salary - deductions

# Ingress user variables
read -p "Please enter your monthly gross salary: " SALARY
read -p "Please enter your tax rate (in percentage): " TAX

# Use bc to operate decimals
MONTHLY_TAX=$(echo "scale=2; $SALARY * ($TAX/100)" | bc -l)
NET_SALARY=$(echo "$SALARY*12-$MONTHLY_TAX*12" | bc -l)
echo "Your total net salary is: $NET_SALARY"

# IF I only use simple operators like the example bellow, I can't operate with decimal numbers.
#MONTHLY_TAX=$(($SALARY * $TAX/100))
