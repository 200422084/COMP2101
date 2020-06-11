#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
Rolling...
$(( RANDOM % 6 + 1)) rolled
"
#Assigning my first name to a variable
var=roopa

#displaying my first name using echo command
echo "My first name is $var"

#counting and displaying the number of letters in my first name
echo "The number of letters in my first name is ${#var}"

#command to roll to roll as many dies as there are letters in my firstname. The number of dies rolled will be 5
echo Rolling first dice ... $(( $RANDOM % 6 + 1 )) rolled
echo Rolling Second dice ... $(( $RANDOM % 6 + 1 )) rolled
echo Rolling Third dice ... $(( $RANDOM % 6 + 1 )) rolled
echo Rolling fourth dice ... $(( $RANDOM % 6 + 1 )) rolled
echo Rolling fifth dice ... $(( $RANDOM % 6 + 1 )) rolled
