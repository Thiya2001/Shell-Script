read -p "Enter the number : " a

if [ $a -gt 0 ]
then
    echo "Positive Number"
elif [ $a -lt 0 ]
then
    echo "Negative Number"
else
    echo "Zero"
fi