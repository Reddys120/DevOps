#!/bin/bash

Results=("50" "60" "30" "46" "35" "80" "75")

echo "Check for number of passed students"
if [$Results -ge 35 ] then
echo "Results of the stdents passed"
else 
echo "Results of the students not passed"
fi
echo ""