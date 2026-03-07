#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_DIR="home/ec2-user/app-logs"
LOG_FILE="$LOGS_DIR/$(basename "$0").log"
#basname removes the directry and prints only the filename

if [ ! -d "$LOGS_DIR" ]; then
    echo -e "$LOGS_DIR does not exits $N"
    exit 1
fi

files_to_delete=$(find "$LOGS_DIR" -name "*.log" -mtime +14)

if [-z "$files_to_delete" ]; then
    echo -e "$Y No log files older than 14 days found in $LOGS_DIR $N"
else
     while IFS= read -r filepath; 
     do
         echo -e "$G Deleting $filepath $N"
         rm -f "$filepath"
    done <<< "$files_to_delete"
fi



