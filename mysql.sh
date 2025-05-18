#!/bin/bash

echo "installing Nginx in server"
USERID=$(id -u)
if [ $USERID -ne 0 ] 
then
    echo "ERROR:: You must have sudo previliges"
fi

dnf install mysql -y
echo "$? = 0 