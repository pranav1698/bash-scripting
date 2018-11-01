#!/bin/bash
# lt - less than
# Arithmetic expansion
SERVER_NAME=$(hostname)
MY_SHELL="Script"

LINE_NUM=1
while read LINE
do 
    echo "$LINE_NUM: $LINE"
    ((LINE_NUM++))
done < /etc/fstab