if [ "$2" = "+" ]; then
    res=$(($1+$3))
elif [ "$2" = "-" ]; then
    res=$(($1-$3))
elif [ "$2" = "x" ]; then
    res=$(($1*$3))
elif [ "$2" = "/" ]; then
    res=$(($1/$3))
else
    echo "Je ne comprends pas."
fi
echo $res
