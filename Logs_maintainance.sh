#!/bin/bash

Timestamp=$(date +%Y-%m-%d-%H:%M:%S)
USERID=$(id -u)
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
NC='\e[0m' # No Color
SOURCE_DIR="/var/log/shell_script_logs"
LOG_FOLDER="/var/log/shell_script_logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
LOGS="$LOG_FOLDER/$LOG_FILE-$Timestamp.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $RED FAILED $NC"
        exit 1
    else
        echo -e "$2 ... $GREEN SUCCESS $NC" 
    fi
}

CHECK_ROOT(){
    if [ $USERID -ne 0 ] 
    then
        echo "ERROR:: You must have sudo previliges"
        exit 1
    fi 
}

echo "Script Execution Started at: $Timestamp" 
# find /var/log -type f -mtime +7 this is for deleting 7 days old logs
FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -mtime +1 | wc -l)
echo "Files to be deleted" $FILES_TO_DELETE
if [ $FILES_TO_DELETE -gt 1 ]
then
    rm -rf $SOURCE_DIR/*
    VALIDATE $? "Deleting Old logs"

else
    echo -e "$GREEN No logs to delete $NC" 
fi

# FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -mtime +1)
# echo "Files to be deleted" $FILES_TO_DELETE

# while read -r file
# do 
#     echo -e "$RED Deleting file $NC"
#     rm -rf $file
# done <<< $FILES_TO_DELETE


