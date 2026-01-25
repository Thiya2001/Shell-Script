read -p "Enter the String : " str
if [ -z "$str" ]
then
echo "You have entered an empty string"
else
echo "You have entered : $str"
fi