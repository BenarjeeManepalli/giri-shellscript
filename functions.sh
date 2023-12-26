#!/bin/bash

# Installing the package using function.
#!/bin/bash
# Package (SQL & Git) installation

ID=$(id -u)

TIMESTAMP=$(date +%F-%X)
LOG="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo "My Script started at $TIMESTAMP" $>>$LOG

VALID(){

    if [ $1 -eq 0 ]
then 
   echo -e "$2 is $G Success $N"
else
   echo -e "$R ERROR :: $2 is failure $N"
fi                   # ending the condition
}                    # FUNCTION IS END

if [ $ID -eq 0 ]
then

     echo -e "$G You are the root user please procced installation"
else
     echo -e "$R ERROR:: you are not root user $N"
exit 1
fi  # end of the condition

yum install mysql -y &>>$LOG # installing the sql package

VALID $? "installing Sql" 

yum install  git -y &>>$LOG # installing the git package

VALID $? "instaling Git"

yum install web -y &>>$LOG # installing the web package

VALID $? "installing Web"

yum install postgresql -y &>>$LOG #installing the postgresql

VALID $? "installing postgresql"

