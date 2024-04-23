#!/bin/bash

USERID=$(id -u)

echo "User id $USERID"

if [ $USERID -ne 0 ]
then 
    echo "Please run this script with root access."
    exit 1
else 
    echo "You are super user."
fi

dnf install mysql -y

if [$? -ne 0]
then 
echo "Installation of mysql...Failure"
else
echo "Installation of mysql ...SUCCESS"
fi

dnf install git -y

if [$? -ne 0]
then 
echo "Installation of git ...Failure"
exit 1
else
echo "Installation of git....SUCCESSS"
fi 

echo "Is script proceeding?"