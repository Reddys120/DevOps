#!/bin/bash

echo "===== ARRAY OPERATIONS ====="
echo ""

fruits=("apple" "banana" "cherry")
echo "Initial array: ${fruits[@]}"
echo ""

fruits+=("date")
echo "After insertion: ${fruits[@]}"
echo ""

fruits[1]="blueberry"
echo "After updating index 1: ${fruits[@]}"
echo ""

unset 'fruits[2]'
echo "After deletion: ${fruits[@]}"
echo ""

echo "Number of elements: ${#fruits[@]}"
echo ""

echo "Looping through array:"
for fruit in "${fruits[@]}"; do
  echo "- $fruit"
done
echo ""

echo "Element at index 0: ${fruits[0]}"
echo ""

echo "Indexes: ${!fruits[@]}"
echo ""

search="banana"
found=0
for item in "${fruits[@]}"; do
  if [ "$item" == "$search" ]; then
    found=1
    break
  fi
done

if [ $found -eq 1 ]; then
  echo "$search found in array"
else
  echo "$search not found in array"
fi
echo ""

echo "Sorted array:"
sorted=($(printf "%s
" "${fruits[@]}" | sort))
echo "${sorted[@]}"
echo ""

more_fruits=("grape" "melon")
combined=("${fruits[@]}" "${more_fruits[@]}")
echo "Merged array: ${combined[@]}"
echo ""