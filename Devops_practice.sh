#!/bin/bash

timestamp=$(date '+%Y-%m-%d %H:%M:%S')
USERID=$(id -u)
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $RED FAILED"
        exit 1
    else
        echo -e "$2 ... $GREEN SUCCESS" 
        echo "Current timestamp: $timestamp"
    fi
}

if [ $USERID -ne 0 ] 
then
    echo -e "$RED ERROR:: You must have sudo previliges"
    exit 1 
fi
echo "Checking for MYSQL installation"
dnf list installed mysql

if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y
    VALIDATE $? INSTALLING MYSQL
else
    echo -e "MYSQL IS ALREADY $YELLOW INSTALLED"
fi

echo "Checking for GIT installation"
dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    VALIDATE $? INSTALLING GIT
else
    echo -e "GIT IS ALREADY $YELLOW INSTALLED"
fi

