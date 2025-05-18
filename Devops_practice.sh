#!/bin/bash

timestamp=$(date '+%Y-%m-%d %H:%M:%S')
USERID=(id -u)

if [$USERID -ne 0] 
then
    echo "ERROR:: You must have sudo previliges"
    exit 1 
fi
echo "Checking for MYSQL installation"
dnf list installed mysql

if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Error:: Installation of mysql ... failed"
        exit 1
    else
        echo "Installation of mysql is success" 
        echo "Current timestamp: $timestamp"
    fi
else
    echo "Mysql is already installed"


fi

echo "Checking for GIT installation"
dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then 
        echo "Installation of Git Failed"
        exit 1
    else 
        echo "Installation of Git is Success"
    fi
else
    echo "Git is already Installed"
fi

# dnf install git -y
# if [ $? -ne 0 ]
# then 
#     echo "installation of git ... failed"
#     exit 1
# else 
#     echo "installation of git is success"
# fi