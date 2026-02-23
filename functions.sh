#!/bin/bash

USERID=$(id -u) #-u means uid of the user

if [ $USERID -ne 0 ]; then 
    echo "please run the script as root user";
    exit 1;
fi

validate(){
    if [ $1 -ne 0 ]; then
        echo "Installing.......$2 package id failed"
    else
        echo "Installing.......$2 package is success"
    fi
}

dnf install mongod -y
validate $? "Installing mongo"

dnf install redis -y
validate $? "Installing redis"