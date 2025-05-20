#!/bin/bash

DISK_USAGE=$(df -h | grep xfs)

while read -r usage
do  
    echo "$usage"
done <<< $DISK_USAGE