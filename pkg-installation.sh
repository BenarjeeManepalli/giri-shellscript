#!/bin/bash
# Package (SQL & Git) installation

ID=$(id -u)

if [ $ID -eq 0 ]

then

echo "You are the root user please procced installation"
  
else

echo "ERROR:: you are not root user"

exit 1
   
fi  # end of the condition

yum install mysql -y # installing the sql package

if [ $? -eq 0 ]
then 
   echo "Installation SQL is Success"
else
   echo "Installation SQL is failure"
fi # ending the condition

yum install  git -y  # installing the git package

if [ $? -eq 0 ]
then 
   echo "Installation Git is Success"
else
   echo "Installation Git is falure"

fi #ending the condition

yum install web -y # installing the web package

if [ $? -eq 0 ]
then 
   echo "Installation Web is Success"
else
   echo "Installation Web is falure"
fi # Ending the condition.

