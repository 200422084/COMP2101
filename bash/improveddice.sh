#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

# Tell the user we have started processing
echo "Rolling..."
# roll the dice and save the results
die1=$(( RANDOM % 6 + 1))
die2=$(( RANDOM % 6 + 1 ))
# display the results
echo "Rolled $die1, $die2"

#command assiging the range to a variables
sidevar=6

#command assiging the bias to a variable
biasevar=1

#command to tell the user that the dies are rolling
echo "Rolling....."

#command to roll the two dics using the range and the bias variable
die1var=$(( RANDOM % $sidevar + $biasevar ))
die2var=$(( RANDOM % $sidevar + $biasevar ))

#command to dispaly the result of the roll
echo "Rolled $die1var, $die2var"

#command to display the sum of two rolls
echo The sum of two rolls is $(( die1var + die2var ))

#command to display the average of the rolled
echo The average of two rolls is $((( die1var + die2var ) / 2))
