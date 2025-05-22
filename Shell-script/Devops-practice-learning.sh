#!/bin/bash

Timestamp=$(date +%Y-%m-%d-%H-%M-%S)
USERID=$(id -u)
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
LOG_FOLDER="/var/log/shell_script_logs"
LOG_FILE=$(echo $0 | awk -F "/" '{print $NF}' cut -d "." -f1)
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

echo "Script Execution Started at: $Timestamp" &>>$LOGS

if [ $USERID -ne 0 ] 
then
    echo "ERROR:: You must have sudo previliges"
    exit 1 
fi
dnf list installed mysql &>>$LOGS

if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y &>>$LOGS
    VALIDATE $? INSTALLING MYSQL
else
    echo -e "MYSQL IS ALREADY $YELLOW INSTALLED" 
fi

dnf list installed git &>>$LOGS
if [ $? -ne 0 ]
then
    dnf install git -y &>>$LOGS
    VALIDATE $? INSTALLING GIT
else
    echo -e "GIT IS ALREADY $YELLOW INSTALLED"
fi 

for package in $@
do  
    dnf list installed $package &>>$LOGS
    if [ $? -ne 0 ]
    then
        dnf install $package -y &>>$LOGS
        VALIDATE $? "Installing $package"
    else 
    echo -e "$package IS ALREADY $YELLOW INSTALLED"
    fi
done