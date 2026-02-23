#!/bin/bash

USERID=$(id -u)
LOG_FOLDER="/var/log/shell-scripts"
LOG_FILE="/var/log/shell-scripts/$0.log"

if [ $USERID -ne 0 ]; then
    echo "please run the script as a root user";
    exit 1;
fi

mkdir -p $LOG_FOLDER


validate(){
    if [ $1 -ne 0 ]; then
        echo "Installing.......$2 packege is failed" | tee -a $LOG_FILE
    else
        echo "Installing.......$2 package is success" | tee -a $LOG_FILE
    fi
}   

dnf install nginx -y &>> $LOG_FILE
validate $? "Installing nginx"

dnf install mysql -y &>> $LOG_FILE
validate $? "Installing mysql"

dnf install redis -y &>> $LOG_FILE
validate $? "Installing redis"