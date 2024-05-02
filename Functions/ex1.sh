#!/bin/bash

function file_count()
{
     local N=$(ls -l | grep "^-" | wc -l)
     echo "current directory have $N files"
}

file_count