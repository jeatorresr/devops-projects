#! /bin/bash
# Exercise 4
# Consider the following bash script:
#     #!/bin/bash
#     num=(1 2 3 5 4)
#     echo "Before sorting array num: "
#     echo ${num[@]}
#     You_code_goes_here
#     echo "After sorting array num: "
#     echo ${num[@]}
# You need to edit the script so that the num array becomes sorted as you can see in the following output:
#     elliot@allsafe:~/scripts$ ./sorted.sh
#     Before sorting array num:
#     1 2 3 5 4
#     After sorting array num:
#     1 2 3 4 5
# Restrictions: You are only allowed to add and delete elements from the array.

num=(1 2 3 5 4)
echo "Before sorting array num: "
echo ${num[@]}
# Delete No 5 in the array
unset num[3]
# Add No 5 to the end of the array
num+=(5)
echo "After sorting array num: "
echo ${num[@]}
