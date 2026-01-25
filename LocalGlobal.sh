num=100

show() {
    local num=200
    echo "Inside Function : $num"
}
show

echo "Outside Function : $num"