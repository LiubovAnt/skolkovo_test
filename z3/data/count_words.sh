#!/bin/sh

if [ x"$1" = "x" ]; then
    echo "You need to give this a filename."
    exit 1
fi

tr -sc 'A-Za-z' '\012' < $1 | tr '[:upper:]' '[:lower:]' | sort | uniq -c
