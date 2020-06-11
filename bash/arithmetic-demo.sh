#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#command to get the first number from the user and then assigning it to the variable
read -p "Enter the First number " firstnum

#command to get the second number from the user and then assigning it to the variables
read -p "Enter the Second number " secondnum

#command to get the third number from the user and then assign it to the varaiable
read -p "Enter the third number " thirdnum

#commnad to display the first ,second and third numbers
echo "The first number is  $firstnum  The second number is $secondnum The third number is $thirdnum"

#command to calculate the sum of first second and third number and then assigning it to a variable
sum=$((firstnum + secondnum + thirdnum))

#command to calculate the product of first number ,second number and third number and then assiging the result to a variable.
product=$((firstnum * secondnum * thirdnum))

#command to display the result of sum and product of three number.The cat comannd will work until an EOF is encountered.
cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
$firstnum Multiplied by $secondnum Multiplied by $thirdnum is $product
EOF
