#!/bin/bash

NUMBER1=$1
NUMBER2=$2

echo "please give the numbers :: "

expr $NUMBER1 + $NUMBER2

echo "the total value is :: $?"

echo "How many args passed:: $#"

echo "All args passed:: $@"

echo "Script name:: $0"