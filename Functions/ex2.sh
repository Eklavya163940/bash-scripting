#!/bin/bash

function file_count() {
    local N
    N=$(ls -l "$1" | grep "^-" | wc -l)
    echo "$1:"
    echo "$N"
}

for D in "$@"
do
    file_count "$D"
done
