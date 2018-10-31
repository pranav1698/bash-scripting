#!/bin/bash

cd ..
DATE=$(date +%F)
read -p "Please enter a file extension:" EXT
read -p "Please enter a file prefix(Press ENTER for $DATE)." PREFIX

shopt -s nullglob
found=0
for FILE in *.$EXT
((found++))
do
    if [ -z "$PREFIX" ]
    then
        echo "renaming $FILE to ${DATE}${FILE}.$EXT"
        mv $FILE ${DATE}${FILE}
    else 
        echo "renaming $FILE to ${PREFIX}${FILE}"
        mv $FILE ${PREFIX}${FILE}
    fi
done 
shopt -u nullglob
[ $found -eq 0 ] && echo "No jpg files"
cd $old 