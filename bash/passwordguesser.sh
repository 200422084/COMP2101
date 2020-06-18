#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

#command to enter the password and store it in a variable
read -p "Guess the password " guesspassword

#command to assign the string to the variable
referenceString="password"

#command to check the content in the two variables are same
if [ $guesspassword = $referenceString ]; then

  #command to diaply the text saying that the contents are same.
  echo "It is a correct guess"

#comand to check if the variables are not same
else
  #command to display that the variables are not equal.
  echo "It is an Incorrect guess"

  #command to enter the password second time.
  read -p "Guess the password second time " guesspassword

  #command to check the content in the two variables are same on second time
  if [ $guesspassword = $referenceString ]; then

    #command to diaply the text saying that the contents are same.
    echo "It is a correct guess on second time"

  #comand to check if the variables are not same
  else
    #command to display that the variables are not equal.
    echo "It is an Incorrect guess on second time"
    #command to enter the password second time.
    read -p "Guess the password third time " guesspassword

    #command to check the content in the two variables are same on second time
    if [ $guesspassword = $referenceString ]; then

      #command to diaply the text saying that the contents are same.
      echo "It is a correct guess on third time"

    #comand to check if the variables are not same
    else
      #command to display that the variables are not equal.
      echo "It is an Incorrect guess on third time"
      #command to enter the password second time.
      read -p "Guess the password fourth time " guesspassword

      #command to check the content in the two variables are same on second time
      if [ $guesspassword = $referenceString ]; then

        #command to diaply the text saying that the contents are same.
        echo "It is a correct guess on fourth time"

      #comand to check if the variables are not same
      else
        #command to display that the variables are not equal.
        echo "It is an Incorrect guess on fourth time"
        #command to enter the password second time.
        read -p "Guess the password fifth time " guesspassword

        #command to check the content in the two variables are same on second time
        if [ $guesspassword = $referenceString ]; then

          #command to diaply the text saying that the contents are same.
          echo "It is a correct guess on fifth time"

        #comand to check if the variables are not same
        else
          #command to display that the variables are not equal.
          echo "It is an Incorrect guess on fifth time and time out"
        fi
      fi
    fi
  fi
fi
