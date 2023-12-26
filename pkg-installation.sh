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

