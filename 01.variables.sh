#!/bin/bash

echo "Hello World"
name="ashish"
age=21
echo "My name is $name and I am $age years old"

echo "This is home direcrtory:$HOME"
echo "This is current working directory: $pwd"
echo "This is the shell: $SHELL"
echo "This is the username: $USER"
echo "This is the hostname: $HOSTNAME"
echo "This is the path: $PATH"
DATE=$(date +%Y-%m-%d)
TIME=$(date +%H:%M:%S)
YEAR=$(date +%Y)
MONTH=$(date +%m)
DAY=$(date +%d)
HOUR=$(date +%H)
MINUTE=$(date +%M)
SECOND=$(date +%S)
echo "This is the current date: $DATE"
echo "This is the current time: $TIME"
echo "This is the current year: $YEAR"
echo "This is the current month: $MONTH"
echo "This is the current day: $DAY"
echo "This is the current hour: $HOUR"
echo "This is the current minute: $MINUTE"
echo "This is the current second: $SECOND"
