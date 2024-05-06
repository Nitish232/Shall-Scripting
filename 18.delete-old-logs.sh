source_directory=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $source_directory ]
then 
    echo -e "$G Source directory exists $N"
else
    echo -e "$R please make sure $source_directory exits $N"
    exit 1
fi

FILES=$(find $source_directory -name "*.log" -mtime +14)

while IFS= read -r line
do 
    echo "deleting files: $line"
    rm -rf $line
done <<< $FILES