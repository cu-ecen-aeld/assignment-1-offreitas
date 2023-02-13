#!/bin/bash

if [[ $# -lt 2 ]]; then
    echo "Usage: ./finder.sh 'filesdir' 'searchstr'"
    exit 1
elif [[ ! -d $1 ]]; then
    echo "$1 is not a directory!"
    exit 1
else
    X=$(ls $1 | wc -l)
    Y=$(grep -nr $2 $1 | wc -l)
    echo "The number of files are ${X} and the number of matching lines are ${Y}"
fi
