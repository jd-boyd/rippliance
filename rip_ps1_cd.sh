#!/bin/bash

if [[ -z "$1" ]]; then
echo -e "Usage: `basename $0` <filename>"
echo -e "Error: No filename specified."
exit 1
fi

cdrdao read-cd --device /dev/scd0 --driver generic-mmc-raw --read-raw --datafile $1.bin $1.toc

exit 0

