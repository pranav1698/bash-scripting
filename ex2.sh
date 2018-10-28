#!/bin/bash

# echo "The script will exit with a 0 exit status"
# exit 0

# if [ -f "$1" ]
# then 
#    exit 0
# elif [ -d "$1" ]
# then
#    exit 1
# else 
#    exit 2
# fi

cat/etc/shadow 
if [ "$?" -eq "0" ]
then
    echo "Command Succeeded"
else 
    echo "Command Failed"
fi