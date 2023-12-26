#!/bin/bash

# Installing the package using function.
#!/bin/bash
# Package (SQL & Git) installation

ID=$(id -u)

VALID(){
    
    if [ $? -eq 0 ]

then 

   echo "Installation is Success"

else

   echo "Installation is failure"

fi # ending the condition
}  # FUNCTION IS END

if [ $ID -eq 0 ]

then

echo "You are the root user please procced installation"
  
else

echo "ERROR:: you are not root user"

exit 1
   
fi  # end of the condition

yum install mysql -y # installing the sql package

VALID

yum install  git -y  # installing the git package

VALID

yum install web -y # installing the web package

VALID

