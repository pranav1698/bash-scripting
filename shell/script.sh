#!/bin/bash
SERVER_NAME=$(hostname)
MY_SHELL="Script"

function hello () {
    for NAME in $@
    do 
        echo "HEllo $NAME"
    done
}
hello Jason Pranav Neil