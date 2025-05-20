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
       MSG+=\n "DISK: $PARTITION Usage is: $UTILIZATION \n " 
    fi
done <<< $DISK_USAGE

echo -e "Message: $MSG"

echo "$MSG" | mutt -s "High Disk Usage" rajeshekaraleti@gmail.com