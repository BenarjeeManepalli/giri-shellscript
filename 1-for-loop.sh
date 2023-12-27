#!/bin/bash

echo "the increased numbers from 1 to 100" 

#for num in (i-eq 1; i -le 100; i++);

for ((i=1;i<=100;i++));
do
    echo "the increased value $i"
done
