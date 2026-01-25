echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"

read -p "Enter your choice (1-3): " choice

case $choice in
    1)
        echo "Addition is selected." ;;
    2)
        echo "Subtraction is selected." ;;
    3)
        echo "Multiplication is selected." ;;
    *)
        echo "Ivalid Choice." ;;
esac
