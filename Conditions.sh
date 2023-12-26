#!/bin/bash
X=$1
Y=$2

echo "Please enter the values :: $X and $Y"

if [ $X -le $Y ]
then
    echo "the value is not less equal to given the value"
  else
    echo "the value is less than equal to give the value"
fi  # fi indicate end of the condition.


