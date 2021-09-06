#!/bin/bash

#COLORS CODES
ERROR_COLOR='\033[0;31m'
VALID_COLOR='\033[32m'
CLEAR_COLOR='\033[0m'

#PASSWORD 
echo "Please Enter Your Password please: "
password='12345678910a'


#Conditions for password Valid len >= 10 && Upper\Lower letters:
if [[ ${#password} -ge 10 && "$password" == *[A-Z]* && "$password" == *[a-z]* && "$password" == *[0-9]* ]];
then
   echo -e $VALID_COLOR  $password "
   Password Valid"$CLEAR_COLOR
   exit 0
fi

#Returns to the user that the number of letters is less than 10
if [ ${#password} -ge 9 ];
then
echo -e $ERROR_COLOR "Password less than 10 characters "$CLEAR_COLOR
fi

#Returns to the user that Missing upper letter


#Returns to the user that Missing lower letter


