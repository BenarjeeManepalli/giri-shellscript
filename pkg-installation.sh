#!/bin/bash
# Package (SQL & Git) installation

ID=$(id -u)

if [ $ID -ne 0 ]

then
  echo "ERROR:: you are not root user"
else
   eho "You are the root user please procced installation"
fi  # end of the condition

yum install mysql -y # installing the sql package

yum install git -y #installing git package