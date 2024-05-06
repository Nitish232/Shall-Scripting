#!/bin/bash

set -e

failure(){
    echo "Failed at $1: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR


userid=$(id -u)

if [ $userid -ne 0 ]
then 
    echo "Please run this script with root access"
    exit 1
else 
    echo "You are super user."
fi 

dnf install mfdfd -y
dnf install git -y

echo "is script proceeding?"