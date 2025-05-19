#!/bin/bash

Timestamp=$(date +%Y-%m-%d-%H:%M:%S)
USERID=$(id -u)
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
NC='\e[0m' # No Color

SOURCE_DIR="$1"
DEST_DIR="$2"
DAYS=${3:-3} # default 3 days


LOG_FOLDER="/var/log/shell_script_logs/archive"
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

USAGE(){
    echo -e "$RED ERROR:: $NC sh Logs_archive.sh <SOURCE_DIR> <DEST_DIR> <DAYS(Optional)>"

}

if [ $# -lt 2 ]
then
    USAGE
fi
if [ -d "$SOURCE_DIR" ]; 
then
    echo -e "$GREEN Folder exists. $NC"
else
    echo -e "$RED Folder not exist.$NC"
    exit 1
fi

if [ -d "$DEST_DIR" ]; then
    echo -e "$GREEN Folder exists. $NC"
else
    echo -e "$RED Folder not exist.$NC"
    exit 1
fi

echo "Script Execution Started at: $Timestamp"

LOGS_ARCHIVE=$(find $SOURCE_DIR -name "*.log" -mtime +$DAYS)
if [ -n $LOGS_ARCHIVE ]
then 
     echo "Logs are $LOGS_ARCHIVE"
else
     echo "No logs found"
fi
