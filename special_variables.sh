#!/bin/bash
echo "All variables:$@"
echo "No of variables : $#"
echo "Name of the script :$0"
echo "Present working directory : $PWD"
echo "Home directory of current user : $HOME"
echo "Which user is running the script : $USER"
echo "Host name : $HOSTNAME"
echo "Process istance id of the current shell script : $$"
sleep 60 &
echo "Process istance id of the last background command : $!"