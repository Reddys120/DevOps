#!/bin/bash


USERID=$(id -u)
if [ $USERID -ne 0 ] 
then
    echo "ERROR:: You must have sudo previliges"
    exit 1 #other than 0
fi

dnf install mysqll -y

if [ $? -ne 0 ]
then 
    echo "installing mysql....failed"
    exit 1 #other than 0
else 
    echo "installing mysql....success"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
    echo "installing git failed"
    exit 1 #other than 0
else 
    echo "installing git success"
fi
