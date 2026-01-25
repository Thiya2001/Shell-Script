read -p "Enter the file name to check existence : " filename
if [ -f "$filename" ]; then
    echo "File exists."
else
    echo "File does not exist."
fi

read -p "Enter the readable file name : " filename
if [ -r "$filename" ]; then
    echo "File is readable."
else
    echo "File is not readable."
fi