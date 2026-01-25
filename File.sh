read -p "Enter the file name to check existence : " filename
if [ -f "$filename" ]; then
    echo "File exists."
else
    echo "File does not exist."
fi