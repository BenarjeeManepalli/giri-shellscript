#!/bin/bash
X=$1
Y=$2

echo "Please enter the values :: $X and $Y"

if [ $X -le $Y ]
{
    echo "the value is not equal to given thevalue"
  else
    echo "the value is equal to give value"
}

