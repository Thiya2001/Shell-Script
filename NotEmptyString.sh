read -p "Enter the String : " str
if [ -n "$str" ]
then
echo "You have entered : $str"
else
echo "You have entered an empty string"
fi