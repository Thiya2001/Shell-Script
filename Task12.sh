echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"

read -p "Enter your choice (1 - 4) : " choice

case $choice in
    1)
        read -p "Enter the first number : " num1
        read -p "Enter the second number : " num2
        result=$((num1+$num2))
        echo "Addition of $num1 and $num2 is : $result" ;;
    2)
        read -p "Enter the first number : " num1
        read -p "Enter the second number : " num2
        result=$((num1-$num2))
        echo "Subtraction of $num1 and $num2 is : $result" ;;
    3)
        read -p "Enter the first number : " num1
        read -p "Enter the second number : " num2
        result=$((num1*$num2))
        echo "Multiplication of $num1 and $num2 is : $result" ;;
    4)
        read -p "Enter the first number : " num1
        read -p "Enter the second number : " num2
        result=$((num1/$num2))
        echo "Division of $num1 and $num2 is : $result" ;;
    *)
        echo "Invalid Number" ;;
esac