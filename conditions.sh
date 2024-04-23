#!/bin/bash

num=$1

if [ $num -gt 3 ]
then 
    echo "Given $num is greater than 3"
else
    echo "Given $num is less than 3"
fi

#-gt, -lt, -eq, -ge, -le