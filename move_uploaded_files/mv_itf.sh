#!/bin/bash
DIR="/home/avdpool/tmp/upload/"
FILES="*.itf"
DEST="/home/avdpool/tmp/import/"
for f in $DIR$FILES
do
    echo "Processing $f"
    lsof +D $DIR | grep -q $f &>/dev/null
    if [ $? -ne 0 ]
    then
        # mv is not an atomic process if you do move to another filesystem
        mv $f $DEST
    fi
done
