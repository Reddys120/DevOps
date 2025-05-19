#!/bin/bash

echo "===== 1. Simple if condition ====="
num=10
if [ $num -gt 5 ]; then
  echo "$num is greater than 5"
fi
echo ""

echo "===== 2. if-else condition ====="
if [ $num -lt 5 ]; then
  echo "$num is less than 5"
else
  echo "$num is not less than 5"
fi
echo ""

echo "===== 3. if-elif-else condition ====="
if [ $num -eq 5 ]; then
  echo "$num is 5"
elif [ $num -eq 10 ]; then
  echo "$num is 10"
else
  echo "$num is something else"
fi
echo ""

echo "===== 4. String comparison ====="
str1="hello"
str2="world"

if [ "$str1" = "$str2" ]; then
  echo "Strings are equal"
else
  echo "Strings are not equal"
fi
echo ""

echo "===== 5. File conditions ====="
file="test.txt"

if [ -e "$file" ]; then
  echo "File exists"
else
  echo "File does not exist"
fi
echo ""

echo "===== 6. Logical AND ====="
a=15
if [ $a -gt 10 ] && [ $a -lt 20 ]; then
  echo "$a is between 10 and 20"
fi
echo ""

echo "===== 7. Logical OR ====="
if [ $a -lt 10 ] || [ $a -eq 15 ]; then
  echo "$a is either less than 10 or equal to 15"
fi
echo ""