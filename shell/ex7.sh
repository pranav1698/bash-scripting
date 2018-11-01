#!/bin/bash

# read -p "How many lines of /etc/passwd would you like to read ?" TOTAL_LINES

# LINE_NUM=0
# while read LINE && [ "$LINE_NUM" -lt "$TOTAL_LINES" ]
# do
#    echo "$LINE_NUM : $LINE"
#    ((LINE_NUM++))
# done < /etc/passwd

while true
do 
    echo "1. Show disk usage."
    echo "2. Show system uptime."
    echo "3. Show the users logged into the system."
    read -p "What would ypu like to do? (Enter q to quit.)" INPUT
    case "$INPUT" in 
        1)
            df -k
            echo " "
            ;;
        2)
            uptime
            echo " "
            ;;
        3)
            who
            echo " "
            ;;
        q)
            break
            ;;
        *)
            echo "Invalid Option"
            echo " "
            ;;
    esac
done
echo "Goodbye!"
