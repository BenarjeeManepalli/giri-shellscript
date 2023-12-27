#!/bin/bash

echo "the increased numbers from 1 to 100" 

for no in {i=1; i <= 100; i++}
do
   if [ $? -eq 0 ]
   then
        echo "the value is $no"
   else
        echo "the given condition is wrong"
   fi 
done
