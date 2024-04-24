#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
echo -e "Script started executing at : $G $TIMESTAMP"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
         echo "$2...$R Failure $N"
         exit 1
    else
        echo "$2...$G Success $N"
    fi
}
sudo su
if [ $USERID -ne 0]
then 
    echo "Please run this script with root access."
    exit 1 #manually exit if error comes.
else
    echo "You are super user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing Mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing git"

dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "Installing Docker"