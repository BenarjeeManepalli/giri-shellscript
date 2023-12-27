#!/bin/bash

echo "the increased numbers from 1 to 100" 

#for num in (i-eq 1; i -le 100; i++);

for no in (( no=1 no <= 100 no++))
do
    echo "the value is $no"
done
