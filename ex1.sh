#!/bin/bash

# HOSTNAME=$(hostname)
# MESSAGE="Shell Scripting is fun"
# echo "The script is running on ${HOSTNAME}."

# if [ -e /etc/shadow ]
# then 
#    echo "Shadow passwords are enabled"
#    if [ -w /etc/shadow ]
#    then 
#        echo "You have permissions to edit /etc/shadow."
#   else
#        echo "You do NOT have permissions to edit /etc/shadow."
#    fi
#else 
#   echo "Shadow passwords are not enabled"
#fi

#ANIMALS="man bear pig dog cat"
#for ANIMAL in $ANIMALS
#do
#    echo $ANIMAL
#done

# read -p "Enter a file or a directory: " INPUT
INPUTS=$@
for INPUT in $INPUTS
do
    if [ -d "$INPUT" ]
    then
        CONTENTS=$(ls $INPUT)
        echo "It is a directory which contains $CONTENTS"
    elif [ -f "$INPUT" ]
    then
        echo "It is a regular file"
    else 
        echo "It is other type of file"
    fi
done

