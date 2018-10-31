#!/bin/bash
# lt - less than
# Arithmetic expansion
SERVER_NAME=$(hostname)
MY_SHELL="Script"

INDEX=1
while [ "$CORRECT" != "y" ]
do 
    read -p "Enter your name: " NAME
    read -p "Is $NAME correct?: " CORRECT
done