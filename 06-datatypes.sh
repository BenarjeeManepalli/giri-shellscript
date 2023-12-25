#!/bin/bash

NUMBER1=$1
NUMBER2=$2

echo "please give the numbers :: "

VALUE='expr $1 + $2'

echo "the total value is :: ${VALUE}"

echo "How many args passed:: $#"

echo "All args passed:: $@"

echo "Script name:: $0"