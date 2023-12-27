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
P="\e[35m"

VALID(){

    if [ $1 -eq 0 ]
then 
   echo -e "$G :: $2 is Success $N"
else
   echo -e "$R ERROR :: $2 is failure $N"
fi                   # ending the condition
}                    # FUNCTION IS END


echo "My Script started at $TIMESTAMP" $>>$LOG

echo -e "$P Total Number of packages passed $#"

echo -e "$P the given packages are $@"

for PKG in $@  # PKG=sql or git or nodejs 
do 
  yum list installed $pkg &>>$LOG
    if [ $? -ne 0 ]
    then
       yum install $PKG -y  &>>$LOG

       VALID $? "Installation of $PKG"
    else
      echo -e "$P the $PKG is already installed .... $Y Skipping $N"
    fi
done

