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

echo "Script Execution Started at: $Timestamp" &>>$LOGS


dnf module disable nodejs -y &>>$LOGS
VALIDATE $? "Disabling existing nodejs module"

dnf module enable nodejs:20 -y &>>$LOGS
VALIDATE $? "Enabling nodejs 20 module"

dnf install nodejs -y &>>$LOGS
VALIDATE $? "Installing Nodejs"

id expense
if [ $? -ne 0 ]
then 
    useradd expense &>>$LOGS
    VALIDATE $? "Adding expense User"
    else 
    echo -e "user already Exists $GREEN ...skiping $NC" &>>$LOGS
fi 

cd /app/
if [ $? -ne 0 ]
then 
    mkdir /app &>>$LOGS
    VALIDATE $? "Creating app directory"
    else 
    echo -e "App directory already $GREEN Exists $NC" &>>$LOGS
fi

curl -o /tmp/backend.zip https://expense-builds.s3.us-east-1.amazonaws.com/expense-backend-v2.zip &>>$LOGS
VALIDATE $? "Downloading backend code"

cd /app

rm -rf *
if [ $? -ne 0 ]
then 
    echo -e "$RED Failed to remove existing files $NC" &>>$LOGS
    else
    unzip /tmp/backend.zip &>>$LOGS
    VALIDATE $? "unzip backend code"
fi

npm install &>>$LOGS
VALIDATE $? "Installing backend dependencies"

cp /home/ec2-user/DevOps/backend.service /etc/systemd/system/backend.service &>>$LOGS
VALIDATE $? "Initating backend"

dnf install mysql -y &>>$LOGS
VALIDATE $? "Installing Mysql Client"

mysql -h mysql.reddytraders.shop -uroot -pExpenseApp@1 < /app/schema/backend.sql &>>$LOGS
VALIDATE $? "Setting tables and schema"

systemctl daemon-reload &>>$LOGS
VALIDATE $? "Reloading systemd daemon"

systemctl enable backend &>>$LOGS
VALIDATE $? "Enable backend"

systemctl start backend &>>$LOGS
VALIDATE $? "Starting backend"

systemctl status backend &>>$LOGS
VALIDATE $? "Backend status"