#!/bin/bash

function file_count () {
    local FILES=$(ls -l $1 | egrep -c '^-')
    echo $FILES
}

file_count /usr/bin