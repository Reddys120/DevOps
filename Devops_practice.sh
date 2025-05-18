#!/bin/bash

timestamp=$(date '+%Y-%m-%d %H:%M:%S')
USERID=$(id -u)

validate(){
    if [ $1 -ne 0 ]
    then
        echo "Error:: $2 ... failed"
        exit 1
    else
        echo "$2 is success" 
        echo "Current timestamp: $timestamp"
    fi
}

if [ $USERID -ne 0 ] 
then
    echo "ERROR:: You must have sudo previliges"
    exit 1 
fi
echo "Checking for MYSQL installation"
dnf list installed mysql
validate
if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y
    validate $? installing mysql
else
    echo "Mysql is already installed"


fi

echo "Checking for GIT installation"
dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    validate $? installing Git
else
    echo "Git is already Installed"
fi

