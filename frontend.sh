#!/bin/bash

Timestamp=$(date +%Y-%m-%d-%H:%M:%S)
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

mkdir -p $LOG_FOLDER

VALIDATE $? "LOGS PATH"

echo "Script Execution Started at: $Timestamp" &>>$LOGS

CHECK_ROOT

dnf install nginx -y &>>$LOGS
VALIDATE $? "Nginx Installation"

systemctl enable nginx &>>$LOGS
VALIDATE $? "Nginx Service Enable"

systemctl start nginx &>>$LOGS
VALIDATE $? "Nginx Service Start"

rm -rf /usr/share/nginx/html/* &>>$LOGS
VALIDATE $? "Nginx HTML Folder Clean"

curl -o /tmp/frontend.zip https://expense-builds.s3.us-east-1.amazonaws.com/expense-frontend-v2.zip &>>$LOGS
VALIDATE $? "Frontend Zip Download"

cd /usr/share/nginx/html &>>$LOGS

unzip /tmp/frontend.zip &>>$LOGS
VALIDATE $? "Unzip frontend"

cp /home/ec2-user/DevOps/expense.conf /etc/nginx/default.d/expense.conf &>>$LOGS
VALIDATE $? "Nginx Config Copy"

systemctl restart nginx &>>$LOGS
VALIDATE $? "Nginx Service Restart"




