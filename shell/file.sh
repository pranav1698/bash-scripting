#!/bin/bash
LINE_NuM=1
grep xfs /etc/fstab | while read LINE 
do
    echo "$LINE_NUM: $LINE"
    ((LINE_NUM++))
done 