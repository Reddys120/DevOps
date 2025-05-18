#!/bin/bash

echo "Check for number of passed students"
Number=("50" "60" "30" "46" "35" "80" "75")
Students=$1

if [$Number -gt 35 ]
then
    echo "  Number of students $1 passed"
else 
    echo "Number of students $1 not passed"