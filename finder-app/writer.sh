#!/bin/bash

if [[ $# -lt 2 ]]; then
    echo "Usage: ./writer.sh 'writefile' 'writestr'"
    exit 1
else
    dir=$(dirname $1)

    if [[ ! -d ${dir} ]]; then
        mkdir -p ${dir}
    fi

    echo $2 > $1
    if [[ $? -ne 0 ]]; then
        echo "Failed to create file!"
        exit 1
    fi
fi
