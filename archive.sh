#!/bin/bash
echo "Executing script: $0"
echo "Archiving user: $1"

passwd -l $1

tar cf /archives/${1}.tar.gz/home/${1}