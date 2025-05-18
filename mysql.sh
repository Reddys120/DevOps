#!/bin/bash


USERID=$(id -u)
if [ $USERID -ne 0 ] 
then
    echo "ERROR:: You must have sudo previliges"
    exit 1 #other than 0
fi

dnf install mysql -y

if [$? -ne 0]
then 
echo "installing mysql failed"
else 
echo "installing mysql success"
fi

