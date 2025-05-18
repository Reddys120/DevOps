#!/bin/bash

echo "===== STRING ====="
name="Alice"
greeting="Hello, $name"
echo "$greeting"
echo ""

echo "===== INTEGER ====="
a=10
b=5
sum=$((a + b))
echo "$a + $b = $sum"
echo ""

echo "===== FLOAT (using bc) ====="
x=5.5
y=2.3
result=$(echo "$x + $y" | bc)
echo "$x + $y = $result"
echo ""

echo "===== ARRAY ====="
colors=("red" "green" "blue")
echo "First color: ${colors[0]}"
echo "All colors: ${colors[@]}"
echo ""

echo "===== ASSOCIATIVE ARRAY ====="
declare -A person
person[name]="Bob"
person[age]=30
echo "Name: ${person[name]}"
echo "Age: ${person[age]}"
echo ""

echo "===== BOOLEAN (Simulated) ====="
is_valid=true
if [ "$is_valid" = "true" ]; then
  echo "Valid state: YES"
else
  echo "Valid state: NO"
fi
echo ""

echo "===== BOOLEAN with INTEGER ====="
flag=0
if [ "$flag" -eq 1 ]; then
  echo "True"
else
  echo "False"
fi
echo ""

echo "===== NULL / EMPTY ====="
empty_var=""
if [ -z "$empty_var" ]; then
  echo "Variable is empty or null"
else
  echo "Variable has value"
fi
echo ""
