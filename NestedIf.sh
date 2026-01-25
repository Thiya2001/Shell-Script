read -p "Enter Username : " user
if [ "$user" = "admin" ]
then
    read -p "Enter Password : " pass
    if [ "$pass" = 1234 ]
    then
        echo "Login Successfully"
    else
        echo "Invalid Password"
    fi
else
    echo "Invalid Username"
fi