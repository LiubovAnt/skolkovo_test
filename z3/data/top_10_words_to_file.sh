#!/bin/sh

if [ x"$1" = "x" ]; then
    echo "You need to give this a filename."
    exit 1
fi

if [ x"$2" = "x" ]; then
    echo "You need to give this a path."
    exit 1
fi

ans=$(tr -sc 'A-Za-z' '\012' < $1 | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -10)

cd $2
i=0
for item in $ans
do
    i=$((i+1))
    if [ $((i%2)) -eq 0 ]
    then
        file_name=$item"_"$count".txt"
        touch $file_name
    else
        count=$item
    fi
done