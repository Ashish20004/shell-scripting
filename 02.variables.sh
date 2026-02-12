#!/bin/bash
PERSON=$1
echo "$PERSON : hi there"
echo "What is your name?"
read name
echo "Hello $name, nice to meet you!"
echo "What is your age?"
read age
echo "You are $age years old."

echo "Name of the script is:$0"
echo "First argument is:$1"
echo "second argument is:$2"
echo "All arguments are:$@"
echo "Number of arguments is:$#"
echo "Exit status of last command is:$?"
echo "process id of the script is:$$"

sum=$((age+$2))
echo "The sum of age and first argument is: $sum"
