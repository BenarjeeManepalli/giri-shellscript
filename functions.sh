#!/bin/bash

# Installing the package using function.
#!/bin/bash
# Package (SQL & Git) installation

ID=$(id -u)

VALID(){

    if [ $1 -eq 0 ]
then 
   echo "$2 is Success"
else
   echo "ERROR :: $2 is failure"
fi                   # ending the condition
}                    # FUNCTION IS END

if [ $ID -eq 0 ]
then

     echo "You are the root user please procced installation"
else
     echo "ERROR:: you are not root user"
exit 1
fi  # end of the condition

yum install mysql -y # installing the sql package

VALID $? "installing Sql"

yum install  git -y  # installing the git package

VALID $? "instaling Git"

yum install web -y # installing the web package

VALID $? "installing Web"

yum install postgresql -y #installing the postgresql

VALID $? "installing postgresql"

