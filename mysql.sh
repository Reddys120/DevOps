#!/bin/bash

Timestamp=$(date +%Y-%m-%d-%H-%M-%S)
USERID=$(id -u)
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
NC='\e[0m' # No Color
LOG_FOLDER="/var/log/shell_script_logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
LOGS="$LOG_FOLDER/$LOG_FILE-$Timestamp.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $RED FAILED"
        exit 1
    else
        echo -e "$2 ... $GREEN SUCCESS" 
    fi
}

CHECK_ROOT(){
    if [ $USERID -ne 0 ] 
    then
        echo "ERROR:: You must have sudo previliges"
        exit 1
    fi 
}

echo "Script Execution Started at: $Timestamp" &>>$LOGS


dnf install mysql-server -y &>>$LOGS
VALIDATE $? INSTALLING MYSQL

systemctl enable mysqld
VALIDATE $? Enabling Mysqld

systemctl start mysqld
VALIDATE $? Starting Mysqld

mysql_secure_installation --set-root-pass ExpenseApp@1
VALIDATE $? Setting root passsword