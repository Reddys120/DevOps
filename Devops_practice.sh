#!/bin/bash

echo "Check for number of passed students"
Results=("50" "60" "30" "46" "35" "80" "75")
Students=$1
if [$Results -ge 35 ]; then
    echo "$Results of the $1 passed"
else 
    echo "$Results of the $1 not passed"
fi
echo ""