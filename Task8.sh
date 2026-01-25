read -p "Enter your age : " age

if [ "$age" -ge 18 ]
then
    echo "Eligible."
else
    echo "Not Eligible."
fi