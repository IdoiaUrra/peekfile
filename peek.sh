NUMLINES=$(cat $1 | wc -l)

if [[ $NUMLINES -lt $((2*$2)) ]]; then
    cat $1
else 
    echo Warning message: "$1" contains more than "$((2*$2))" lines.
    head -n $2 $1 
    echo ...
    tail -n $2 $1
fi 


