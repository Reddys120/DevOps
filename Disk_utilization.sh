#!/bin/bash

VALIDATE(){
    if [ $2 -gt 5 ]
    then
        echo -e "$2 ... $RED ALERT $NC"
        exit 1
    else
        echo -e "$2 ... $GREEN OKAY $NC" 
    fi
}

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 # 5% threshold
while read -r percentage
do  
    UTILIZATION=$(echo "$percentage" | awk -F " " '{print $6F}')
    PARTITION==$(echo "$percentage" | awk -F " " '{print $NF}') 
    echo "FILESYSTEM$PARTITION = $UTILIZATION  " 
done <<< $DISK_USAGE