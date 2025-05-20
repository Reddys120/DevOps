#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 # 5% threshold
MSG=''
while read -r percentage
do  
    UTILIZATION=$(echo "$percentage" | awk -F " " '{print $6F}' | sed 's/%//g')
    PARTITION=$(echo "$percentage" | awk -F " " '{print $NF}') 
    #echo "FILESYSTEM:$PARTITION = $UTILIZATION  "
    if [ $UTILIZATION -ge $DISK_THRESHOLD ]
    then
       MSG+="Disk utilization has reached threshold: $PARTITION ...Please check \n " 
    fi
done <<< $DISK_USAGE

echo -e "Message: $MSG"