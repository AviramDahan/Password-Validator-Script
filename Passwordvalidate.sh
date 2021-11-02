#!/bin/bash

#COLORS CODES
ERROR_COLOR='\033[0;31m'
VALID_COLOR='\033[32m'
CLEAR_COLOR='\033[0m'

#PASSWORD 
password='12345678910a'
CHECK=0

#Returns to the user that the number of letters is less than 10
if [ ${#password} -gt 9 ];
then
((CHECK++))
else
echo -e $ERROR_COLOR "Password less than 10 characters "$CLEAR_COLOR
fi

#Returns to the user that Missing upper letter
if [[ $password =~ [A-Z] ]];
then
((CHECK++))
else
echo -e $ERROR_COLOR "password does not include uppercase letters "$CLEAR_COLOR
fi


#Returns to the user that Missing lower letter
if [[ $password =~ [a-z] ]];
then
((CHECK++))
else
echo -e $ERROR_COLOR "password does not include lowercase letters "$CLEAR_COLOR
fi

#Conditions for password Valid len >= 10 && Upper\Lower letters:
if [ $CHECK -eq 3 ];
then
echo -e $VALID_COLOR "
Password Valid"$CLEAR_COLOR
exit 0
else
exit 1
fi
