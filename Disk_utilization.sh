#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 # 5% threshold
while read -r percentage
do  
    UTILIZATION=$(echo "$percentage" | awk -F " " '{print $6F}' | sed 's/%//g')
    PARTITION=$(echo "$percentage" | awk -F " " '{print $NF}') 
    echo "FILESYSTEM:$PARTITION = $UTILIZATION  " 
done <<< $DISK_USAGE