#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run the script as a root user";
    exit 1;
fi
echo "Installing nginx package"
dnf install nginx -y

if [ $? -ne 0 ]; then 
    echo "Installing....... nginx packege is failed"
else
    echo "Installing....... nginx package is success"
fi

echo "Installing mysql package"
dnf install mysql -y

if [ $? -ne 0 ]; then 
    echo "Installing....... mysql packege is failed"
else
    echo "Installing....... mysql package is success"
fi

echo "Installing nodejs package"
dnf install nodejs -y
if [ $? -ne 0 ]; then 
    echo "Installing....... nodejs packege is failed"
else
    echo "Installing....... nodejs package is success"
fi

echo sucessfully installed nginx, mysql and nodejs packages