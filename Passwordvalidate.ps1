#COLORS CODES
[string]$ERROR_COLOR='\033[0;31m'
[string]$VALID_COLOR='\033[32m'
[string]$CLEAR_COLOR='\033[0m'

#PASSWORD 
[string]$password=$args[0]
[int]$CHECK=0

########################## עדיין לא מצאתי את הסינטקס
#Option -f added, reading password.txt file and setting the password according to the password in the file.
while (getopts "f:" opt)
{
case $opt in
f:password=`cat "password.txt"`;;
 
}
#######################

#Returns to the user that the number of letters is less than 10
if ( ${#password} -gt 9 ){
((CHECK++))
}
else{
Write-Host $ERROR_COLOR "Password less than 10 characters "$CLEAR_COLOR
}

#Returns to the user that Missing upper letter
if (( $password =~ (A-Z) )){
((CHECK++))
}
else{
Write-Host $ERROR_COLOR "password does not include uppercase letters "$CLEAR_COLOR
}


#Returns to the user that Missing lower letter
if (( $password =~ (a-z) ))
{
((CHECK++))
}
else{
Write-Host $ERROR_COLOR "password does not include lowercase letters "$CLEAR_COLOR
}


#Conditions for password Valid len >= 10 && Upper\Lower letters:
if ( $CHECK -eq 3 )
{
Write-Host $VALID_COLOR  $password "
Password Valid"$CLEAR_COLOR
exit 0
}
else{
exit 1
}