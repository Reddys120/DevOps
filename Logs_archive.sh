#!/bin/bash

Timestamp=$(date +%Y-%m-%d-%H:%M:%S)
USERID=$(id -u)
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
NC='\e[0m' # No Color
SOURCE_DIR="/var/log/shell_script_logs/active"
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
    echo -e "$RED ERROR:: sh Logs_archive.sh </var/log/shell_script_logs/active> </var/log/shell_script_logs/archive> <Number of days(Optional)>  $NC"

}

if [ $# -lt 2 ]
then
    USAGE
fi