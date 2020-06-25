#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
verboseMode="off"
# loop through the command line arguments
while [ $# -gt 0 ]; do
  ######################## Task 1 Answer##################################
  #case command to check if the first argument is help if so display the help argument.
  case "$1" in
    -h | --help )
    echo "Help argument"
    exit
      ;;
      #command to check if the first argument is verbose and if its so then display a message
    -v )
    verboseMode="ON"
    echo "-v for verbose and is $verboseMode"
    exit
      ;;
      #command to check if the first argument is -d and the if the condition check if there is a number after -d that indicates the
      #the level. if there is a argument then a message with debug level will display else an error message will get displayed.
      -d )
       if [[ "$2" != "" ]]; then
         echo "The debug mode is on and the level is $2"
       else
         echo "ERROR, The debug mode was given without a level"
       fi
       exit
      ;;
# for all the other cases the argument will get stored to the array.
      * )
   # tell the user how many things are left on the command line
   echo "There are $# things left to process on the command line."
   # add whatever is in $1 to the myargs array
   myargs+=("$1")
   # tell the user what we did
   echo "Added \'$1\' to the arguments array"


  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  ;;
esac
  # go back to the top of the loop to see if anything is left to work on
done
#command to print out the content in the array
echo "The content in Array is"
echo "${myargs[@]}"
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label
