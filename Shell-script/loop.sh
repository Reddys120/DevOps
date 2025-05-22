#!/bin/bash

echo "=== For Loop ==="
for i in {1..5}; do
  echo "Number: $i"
done

echo ""

echo "=== While Loop ==="
count=1
while [ $count -le 5 ]; do
  echo "Count is: $count"
  ((count++))
done

echo ""

echo "=== Until Loop ==="
x=1
until [ $x -gt 5 ]; do
  echo "x is: $x"
  ((x++))
done