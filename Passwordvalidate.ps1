#PASSWORD 
[string]$password=$args[0]
[int]$CHECK=0


#Returns to the user that the number of letters is less than 10
if($password.Length -ge 10)
{
$CHECK++
}
else{
Write-Host -ForegroundColor red "Password less than 10 characters "
}

#Returns to the user that Missing upper letter
if ( $password -match '(?-i)[A-Z]+'  ){
$CHECK++
}
else{
Write-Host -ForegroundColor red "password does not include uppercase letters "
}


#Returns to the user that Missing lower letter
if ( $password -match '(?-i)[a-z]+'  )
{
$CHECK++
}
else{
Write-Host -ForegroundColor red "password does not include lowercase letters "
}


#Conditions for password Valid len >= 10 && Upper\Lower letters:
if ( $CHECK -eq 3 )
{
Write-Host -ForegroundColor green  $password "
Password Valid"
exit 0
}
else{
exit 1
}