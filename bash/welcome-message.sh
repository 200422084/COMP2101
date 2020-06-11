#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############


###############
# Main        #
###############
#command to assign the value of user to a variable
uservar=$USER

#command find the weekday and assigning it to a varaiable
dayvar=$(date +%A)

#comman dto find the time and assigning it to a variable
timevar=$(date +%T)

#comand to display the day of the week and the time.
echo "It is $dayvar at $timevar"

#command to check the condition
if [[ $dayvar == "Monday" ]]; then
  title="Beautiful"
elif [[ $dayvar == "Tuesday" ]]; then
  title="Happy"
elif [[ $dayvar == "Wednesday" ]]; then
  title="Lovely"
elif [[ $dayvar == "Thursday" ]]; then
  title="friendly"
elif [[ $dayvar == "Friday" ]]; then
  title="exited"
elif [[ $dayvar == "Saturday" ]]; then
  title="wonderful"
elif [[ $dayvar == "Sunday" ]]; then
  title="good"
fi
  #statements

#command to display the welcome message with dynamicaly defined hostname and username.
echo "Welcome to planet $(hostname) $title $uservar!"
